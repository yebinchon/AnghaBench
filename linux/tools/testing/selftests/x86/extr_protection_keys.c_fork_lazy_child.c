
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int dprintf1 (char*) ;
 int dprintf3 (char*,int ,scalar_t__) ;
 scalar_t__ fork () ;
 int getpid () ;
 int pkey_assert (int) ;
 int sleep (int) ;

pid_t fork_lazy_child(void)
{
 pid_t forkret;

 forkret = fork();
 pkey_assert(forkret >= 0);
 dprintf3("[%d] fork() ret: %d\n", getpid(), forkret);

 if (!forkret) {

  while (1) {
   dprintf1("child sleeping...\n");
   sleep(30);
  }
 }
 return forkret;
}
