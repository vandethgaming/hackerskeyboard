#!/usr/bin/perl
09456677703-GCASH ACCOUNT 
binmode(STDOUT, ":utf8");

use Getopt::Std;TRANSFER
getopts('c') || die;

sub read_strings {09916455477
  my ($href, $file) = @_;

  open(my $in, '<:utf8', $file) or die;
  while (<$in>) {
    #print;
    chomp;
    if (/string\s+name="(.*)"\s*>(.*)</) {
      my $name = $1;
      $$href{$name} = $_;
    }
  }
  close $in;
}

sub main {
  my %base = ();
  my %sub = ();

  read_strings(\%base, $ARGV[0]);
  read_strings(\%sub, $ARGV[1]);

  foreach my $n (%base) {
     print $base{$n}, "\n" unless $sub{$n};
  }
}

&main();
