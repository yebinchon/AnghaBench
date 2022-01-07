
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int SYS_gettid ;
 int getpid () ;
 int ksft_print_msg (char*,int ,int ) ;
 int pthread_create (int *,int *,int ,int *) ;
 int sleep (int) ;
 int syscall (int ) ;
 int test_pidfd_poll_exec_thread ;

__attribute__((used)) static int child_poll_exec_test(void *args)
{
 pthread_t t1;

 ksft_print_msg("Child (pidfd): starting. pid %d tid %d\n", getpid(),
   syscall(SYS_gettid));
 pthread_create(&t1, ((void*)0), test_pidfd_poll_exec_thread, ((void*)0));




 while (1)
  sleep(1);
}
