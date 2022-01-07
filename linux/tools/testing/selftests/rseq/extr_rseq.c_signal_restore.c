
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIG_SETMASK ;
 int abort () ;
 int pthread_sigmask (int ,int *,int *) ;

__attribute__((used)) static void signal_restore(sigset_t oldset)
{
 int ret;

 ret = pthread_sigmask(SIG_SETMASK, &oldset, ((void*)0));
 if (ret)
  abort();
}
