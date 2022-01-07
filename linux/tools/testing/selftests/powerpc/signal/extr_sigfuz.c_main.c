
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARG_COMPLETE ;
 int ARG_FOREVER ;
 int ARG_MESS_WITH_MSR_AT ;
 int ARG_MESS_WITH_TM_AT ;
 int ARG_MESS_WITH_TM_BEFORE ;
 int args ;
 int atoi (int ) ;
 int count_max ;
 int getopt (int,char**,char*) ;
 int nthread ;
 int optarg ;
 int printf (char*,...) ;
 int show_help (char*) ;
 int signal_fuzzer ;
 int test_harness (int ,char*) ;
 int test_harness_set_timeout (int) ;

int main(int argc, char **argv)
{
 int opt;

 while ((opt = getopt(argc, argv, "bamxt:fi:h")) != -1) {
  if (opt == 'b') {
   printf("Mess with TM before signal\n");
   args |= ARG_MESS_WITH_TM_BEFORE;
  } else if (opt == 'a') {
   printf("Mess with TM at signal handler\n");
   args |= ARG_MESS_WITH_TM_AT;
  } else if (opt == 'm') {
   printf("Mess with MSR[TS] bits in mcontext\n");
   args |= ARG_MESS_WITH_MSR_AT;
  } else if (opt == 'x') {
   printf("Running with all options enabled\n");
   args |= ARG_COMPLETE;
  } else if (opt == 't') {
   nthread = atoi(optarg);
   printf("Threads = %d\n", nthread);
  } else if (opt == 'f') {
   args |= ARG_FOREVER;
   printf("Press ^C to stop\n");
   test_harness_set_timeout(-1);
  } else if (opt == 'i') {
   count_max = atoi(optarg);
   printf("Running for %d interactions\n", count_max);
  } else if (opt == 'h') {
   show_help(argv[0]);
  }
 }


 if (!args)
  args = ARG_COMPLETE;

 test_harness(signal_fuzzer, "signal_fuzzer");
}
