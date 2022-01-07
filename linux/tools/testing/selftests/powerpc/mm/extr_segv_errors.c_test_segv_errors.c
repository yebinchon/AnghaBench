
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_flags; int sa_sigaction; } ;


 int FAIL_IF (int) ;
 int MAP_ANONYMOUS ;
 char* MAP_FAILED ;
 int MAP_PRIVATE ;
 int SA_SIGINFO ;
 scalar_t__ SEGV_ACCERR ;
 int SIGSEGV ;
 int faulted ;
 int getpagesize () ;
 int mb () ;
 char* mmap (int *,int ,int ,int,int,int ) ;
 int segv_handler ;
 scalar_t__ si_code ;
 scalar_t__ sigaction (int ,struct sigaction*,int *) ;

int test_segv_errors(void)
{
 struct sigaction act = {
  .sa_sigaction = segv_handler,
  .sa_flags = SA_SIGINFO,
 };
 char c, *p = ((void*)0);

 p = mmap(((void*)0), getpagesize(), 0, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);
 FAIL_IF(p == MAP_FAILED);

 FAIL_IF(sigaction(SIGSEGV, &act, ((void*)0)) != 0);

 faulted = 0;
 si_code = 0;





 mb();
 c = *p;
 mb();

 FAIL_IF(!faulted);
 FAIL_IF(si_code != SEGV_ACCERR);

 faulted = 0;
 si_code = 0;

 mb();
 *p = c;
 mb();

 FAIL_IF(!faulted);
 FAIL_IF(si_code != SEGV_ACCERR);

 return 0;
}
