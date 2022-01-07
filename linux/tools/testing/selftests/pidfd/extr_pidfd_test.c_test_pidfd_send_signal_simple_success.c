
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CLOEXEC ;
 int O_DIRECTORY ;
 int SIGUSR1 ;
 int close (int) ;
 int ksft_exit_fail_msg (char*,char const*) ;
 int ksft_test_result_pass (char*,char const*) ;
 int open (char*,int) ;
 int set_signal_received_on_sigusr1 ;
 int signal (int ,int ) ;
 int signal_received ;
 int sys_pidfd_send_signal (int,int ,int *,int ) ;

__attribute__((used)) static int test_pidfd_send_signal_simple_success(void)
{
 int pidfd, ret;
 const char *test_name = "pidfd_send_signal send SIGUSR1";

 pidfd = open("/proc/self", O_DIRECTORY | O_CLOEXEC);
 if (pidfd < 0)
  ksft_exit_fail_msg(
   "%s test: Failed to open process file descriptor\n",
   test_name);

 signal(SIGUSR1, set_signal_received_on_sigusr1);

 ret = sys_pidfd_send_signal(pidfd, SIGUSR1, ((void*)0), 0);
 close(pidfd);
 if (ret < 0)
  ksft_exit_fail_msg("%s test: Failed to send signal\n",
       test_name);

 if (signal_received != 1)
  ksft_exit_fail_msg("%s test: Failed to receive signal\n",
       test_name);

 signal_received = 0;
 ksft_test_result_pass("%s test: Sent signal\n", test_name);
 return 0;
}
