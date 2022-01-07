
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIG_BLOCK ;
 int abort () ;
 int pthread_sigmask (int ,int *,int *) ;
 int sigfillset (int *) ;

__attribute__((used)) static void signal_off_save(sigset_t *oldset)
{
 sigset_t set;
 int ret;

 sigfillset(&set);
 ret = pthread_sigmask(SIG_BLOCK, &set, oldset);
 if (ret)
  abort();
}
