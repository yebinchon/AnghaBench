
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ksft_exit_pass () ;
 int ksft_print_header () ;
 int ksft_set_plan (int) ;
 int test_pidfd_poll_exec (int) ;
 int test_pidfd_poll_leader_exit (int) ;
 int test_pidfd_send_signal_exited_fail () ;
 int test_pidfd_send_signal_recycled_pid_fail () ;
 int test_pidfd_send_signal_simple_success () ;
 int test_pidfd_send_signal_syscall_support () ;

int main(int argc, char **argv)
{
 ksft_print_header();
 ksft_set_plan(4);

 test_pidfd_poll_exec(0);
 test_pidfd_poll_exec(1);
 test_pidfd_poll_leader_exit(0);
 test_pidfd_poll_leader_exit(1);
 test_pidfd_send_signal_syscall_support();
 test_pidfd_send_signal_simple_success();
 test_pidfd_send_signal_exited_fail();
 test_pidfd_send_signal_recycled_pid_fail();

 return ksft_exit_pass();
}
