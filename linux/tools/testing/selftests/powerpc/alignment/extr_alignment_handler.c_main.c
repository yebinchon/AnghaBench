
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_flags; int sa_mask; int sa_sigaction; } ;


 int SA_SIGINFO ;
 int SIGBUS ;
 int SIGILL ;
 int SIGSEGV ;
 int bufsize ;
 int debug ;
 int exit (int) ;
 int getopt (int,char**,char*) ;
 int getpagesize () ;
 int perror (char*) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int sighandler ;
 int test_alignment_handler_fp ;
 int test_alignment_handler_fp_205 ;
 int test_alignment_handler_fp_206 ;
 int test_alignment_handler_integer ;
 int test_alignment_handler_integer_206 ;
 int test_alignment_handler_vmx ;
 int test_alignment_handler_vsx_206 ;
 int test_alignment_handler_vsx_207 ;
 int test_alignment_handler_vsx_300 ;
 int test_harness (int ,char*) ;
 int usage (char*) ;

int main(int argc, char *argv[])
{

 struct sigaction sa;
 int rc = 0;
 int option = 0;

 while ((option = getopt(argc, argv, "d")) != -1) {
  switch (option) {
  case 'd':
   debug++;
   break;
  default:
   usage(argv[0]);
   exit(1);
  }
 }

 bufsize = getpagesize();

 sa.sa_sigaction = sighandler;
 sigemptyset(&sa.sa_mask);
 sa.sa_flags = SA_SIGINFO;
 if (sigaction(SIGSEGV, &sa, ((void*)0)) == -1
     || sigaction(SIGBUS, &sa, ((void*)0)) == -1
     || sigaction(SIGILL, &sa, ((void*)0)) == -1) {
  perror("sigaction");
  exit(1);
 }

 rc |= test_harness(test_alignment_handler_vsx_206,
      "test_alignment_handler_vsx_206");
 rc |= test_harness(test_alignment_handler_vsx_207,
      "test_alignment_handler_vsx_207");
 rc |= test_harness(test_alignment_handler_vsx_300,
      "test_alignment_handler_vsx_300");
 rc |= test_harness(test_alignment_handler_integer,
      "test_alignment_handler_integer");
 rc |= test_harness(test_alignment_handler_integer_206,
      "test_alignment_handler_integer_206");
 rc |= test_harness(test_alignment_handler_vmx,
      "test_alignment_handler_vmx");
 rc |= test_harness(test_alignment_handler_fp,
      "test_alignment_handler_fp");
 rc |= test_harness(test_alignment_handler_fp_205,
      "test_alignment_handler_fp_205");
 rc |= test_harness(test_alignment_handler_fp_206,
      "test_alignment_handler_fp_206");
 return rc;
}
