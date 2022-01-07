
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOSYS ;
 int O_CLOEXEC ;
 int O_DIRECTORY ;
 int close (int) ;
 scalar_t__ errno ;
 int ksft_exit_fail_msg (char*,char const*) ;
 int ksft_exit_skip (char*,char const*) ;
 int ksft_test_result_pass (char*,char const*) ;
 int open (char*,int) ;
 int sys_pidfd_send_signal (int,int ,int *,int ) ;

__attribute__((used)) static int test_pidfd_send_signal_syscall_support(void)
{
 int pidfd, ret;
 const char *test_name = "pidfd_send_signal check for support";

 pidfd = open("/proc/self", O_DIRECTORY | O_CLOEXEC);
 if (pidfd < 0)
  ksft_exit_fail_msg(
   "%s test: Failed to open process file descriptor\n",
   test_name);

 ret = sys_pidfd_send_signal(pidfd, 0, ((void*)0), 0);
 if (ret < 0) {
  if (errno == ENOSYS)
   ksft_exit_skip(
    "%s test: pidfd_send_signal() syscall not supported\n",
    test_name);

  ksft_exit_fail_msg("%s test: Failed to send signal\n",
       test_name);
 }

 close(pidfd);
 ksft_test_result_pass(
  "%s test: pidfd_send_signal() syscall is supported. Tests can be executed\n",
  test_name);
 return 0;
}
