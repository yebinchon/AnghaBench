
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PR_SET_TSC ;
 int PR_TSC_SIGSEGV ;
 int SIGSEGV ;
 int alarm (int) ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int perror (char*) ;
 scalar_t__ prctl (int ,int ) ;
 int rdtsc () ;
 int signal (int ,int ) ;
 int sigsegv_expect ;
 int stderr ;

__attribute__((used)) static void segvtask(void)
{
 if (prctl(PR_SET_TSC, PR_TSC_SIGSEGV) < 0)
 {
  perror("prctl");
  exit(0);
 }
 signal(SIGSEGV, sigsegv_expect);
 alarm(10);
 rdtsc();
 fprintf(stderr, "FATAL ERROR, rdtsc() succeeded while disabled\n");
 exit(0);
}
