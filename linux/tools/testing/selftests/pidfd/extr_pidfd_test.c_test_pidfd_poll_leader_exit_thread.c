
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHILD_THREAD_MIN_WAIT ;
 int SYS_gettid ;
 int getpid () ;
 int ksft_print_msg (char*,int ,int ) ;
 int sleep (int ) ;
 int syscall (int ) ;

__attribute__((used)) static void *test_pidfd_poll_leader_exit_thread(void *priv)
{
 ksft_print_msg("Child Thread: starting. pid %d tid %d ; and sleeping\n",
   getpid(), syscall(SYS_gettid));
 sleep(CHILD_THREAD_MIN_WAIT);
 ksft_print_msg("Child Thread: DONE. pid %d tid %d\n", getpid(), syscall(SYS_gettid));
 return ((void*)0);
}
