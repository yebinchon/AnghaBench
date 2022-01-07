
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int dprintf3 (char*,int ,scalar_t__) ;
 int exit (int ) ;
 scalar_t__ fork () ;
 int getpid () ;
 int pkey_assert (int) ;

void become_child(void)
{
 pid_t forkret;

 forkret = fork();
 pkey_assert(forkret >= 0);
 dprintf3("[%d] fork() ret: %d\n", getpid(), forkret);

 if (!forkret) {

  return;
 }
 exit(0);
}
