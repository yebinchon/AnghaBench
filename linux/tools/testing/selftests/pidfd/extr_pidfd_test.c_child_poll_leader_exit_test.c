
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int SYS_exit ;
 int SYS_gettid ;
 int * child_exit_secs ;
 int getpid () ;
 int ksft_print_msg (char*,int ,int ) ;
 int pthread_create (int *,int *,int ,int *) ;
 int syscall (int ,...) ;
 int test_pidfd_poll_leader_exit_thread ;
 int time (int *) ;

__attribute__((used)) static int child_poll_leader_exit_test(void *args)
{
 pthread_t t1, t2;

 ksft_print_msg("Child: starting. pid %d tid %d\n", getpid(), syscall(SYS_gettid));
 pthread_create(&t1, ((void*)0), test_pidfd_poll_leader_exit_thread, ((void*)0));
 pthread_create(&t2, ((void*)0), test_pidfd_poll_leader_exit_thread, ((void*)0));





 *child_exit_secs = time(((void*)0));
 syscall(SYS_exit, 0);
}
