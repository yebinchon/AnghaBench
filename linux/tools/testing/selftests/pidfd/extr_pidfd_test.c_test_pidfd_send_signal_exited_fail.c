
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;
typedef int buf ;


 int ESRCH ;
 int EXIT_SUCCESS ;
 int O_CLOEXEC ;
 int O_DIRECTORY ;
 int _exit (int ) ;
 int close (int) ;
 int errno ;
 scalar_t__ fork () ;
 int ksft_exit_fail_msg (char*,char const*,...) ;
 int ksft_test_result_pass (char*,char const*) ;
 int open (char*,int) ;
 int snprintf (char*,int,char*,scalar_t__) ;
 int sys_pidfd_send_signal (int,int ,int *,int ) ;
 int wait_for_pid (scalar_t__) ;

__attribute__((used)) static int test_pidfd_send_signal_exited_fail(void)
{
 int pidfd, ret, saved_errno;
 char buf[256];
 pid_t pid;
 const char *test_name = "pidfd_send_signal signal exited process";

 pid = fork();
 if (pid < 0)
  ksft_exit_fail_msg("%s test: Failed to create new process\n",
       test_name);

 if (pid == 0)
  _exit(EXIT_SUCCESS);

 snprintf(buf, sizeof(buf), "/proc/%d", pid);

 pidfd = open(buf, O_DIRECTORY | O_CLOEXEC);

 (void)wait_for_pid(pid);

 if (pidfd < 0)
  ksft_exit_fail_msg(
   "%s test: Failed to open process file descriptor\n",
   test_name);

 ret = sys_pidfd_send_signal(pidfd, 0, ((void*)0), 0);
 saved_errno = errno;
 close(pidfd);
 if (ret == 0)
  ksft_exit_fail_msg(
   "%s test: Managed to send signal to process even though it should have failed\n",
   test_name);

 if (saved_errno != ESRCH)
  ksft_exit_fail_msg(
   "%s test: Expected to receive ESRCH as errno value but received %d instead\n",
   test_name, saved_errno);

 ksft_test_result_pass("%s test: Failed to send signal as expected\n",
         test_name);
 return 0;
}
