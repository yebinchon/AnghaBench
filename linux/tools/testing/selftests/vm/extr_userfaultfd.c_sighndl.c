
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int siginfo_t ;


 int SIGBUS ;
 int abort () ;
 int * sigbuf ;
 int siglongjmp (int ,int) ;

__attribute__((used)) static void sighndl(int sig, siginfo_t *siginfo, void *ptr)
{
 if (sig == SIGBUS) {
  if (sigbuf)
   siglongjmp(*sigbuf, 1);
  abort();
 }
}
