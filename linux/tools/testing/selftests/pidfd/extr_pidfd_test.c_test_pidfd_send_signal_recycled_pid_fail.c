
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;
typedef int buf ;


 int CLONE_NEWNS ;
 int CLONE_NEWPID ;
 scalar_t__ ESRCH ;
 int MNT_DETACH ;
 int MS_PRIVATE ;
 int MS_REC ;
 int O_CLOEXEC ;
 int O_DIRECTORY ;
 int PIDFD_ERROR ;

 int PIDFD_MAX_DEFAULT ;



 scalar_t__ PID_RECYCLE ;
 int SIGCONT ;
 int SIGKILL ;
 int SIGSTOP ;
 int _exit (int) ;
 int close (int) ;
 scalar_t__ errno ;
 scalar_t__ fork () ;
 int kill (scalar_t__,int ) ;
 int ksft_exit_fail_msg (char*,char const*,...) ;
 int ksft_print_msg (char*,char const*) ;
 int ksft_test_result_pass (char*,char const*) ;
 int mount (char*,char*,char*,int,int *) ;
 int open (char*,int) ;
 int pipe2 (int*,int) ;
 int read (int,char*,int) ;
 int snprintf (char*,int,char*,scalar_t__) ;
 int sys_pidfd_send_signal (int,int ,int *,int ) ;
 int umount2 (char*,int ) ;
 int unshare (int ) ;
 int wait_for_pid (scalar_t__) ;

__attribute__((used)) static int test_pidfd_send_signal_recycled_pid_fail(void)
{
 int i, ret;
 pid_t pid1;
 const char *test_name = "pidfd_send_signal signal recycled pid";

 ret = unshare(CLONE_NEWPID);
 if (ret < 0)
  ksft_exit_fail_msg("%s test: Failed to unshare pid namespace\n",
       test_name);

 ret = unshare(CLONE_NEWNS);
 if (ret < 0)
  ksft_exit_fail_msg(
   "%s test: Failed to unshare mount namespace\n",
   test_name);

 ret = mount(((void*)0), "/", ((void*)0), MS_REC | MS_PRIVATE, 0);
 if (ret < 0)
  ksft_exit_fail_msg("%s test: Failed to remount / private\n",
       test_name);


 pid1 = fork();
 if (pid1 < 0)
  ksft_exit_fail_msg("%s test: Failed to create new process\n",
       test_name);

 if (pid1 == 0) {
  char buf[256];
  pid_t pid2;
  int pidfd = -1;

  (void)umount2("/proc", MNT_DETACH);
  ret = mount("proc", "/proc", "proc", 0, ((void*)0));
  if (ret < 0)
   _exit(PIDFD_ERROR);


  for (i = 0; i <= PIDFD_MAX_DEFAULT; i++) {
   pid2 = fork();
   if (pid2 < 0)
    _exit(PIDFD_ERROR);

   if (pid2 == 0)
    _exit(130);

   if (pid2 == PID_RECYCLE) {
    snprintf(buf, sizeof(buf), "/proc/%d", pid2);
    ksft_print_msg("pid to recycle is %d\n", pid2);
    pidfd = open(buf, O_DIRECTORY | O_CLOEXEC);
   }

   if (wait_for_pid(pid2))
    _exit(PIDFD_ERROR);

   if (pid2 >= PID_RECYCLE)
    break;
  }





  if (pid2 != PID_RECYCLE) {

   close(pidfd);
   _exit(129);
  }

  if (pidfd < 0)
   _exit(PIDFD_ERROR);

  for (i = 0; i <= PIDFD_MAX_DEFAULT; i++) {
   char c;
   int pipe_fds[2];
   pid_t recycled_pid;
   int child_ret = 130;

   ret = pipe2(pipe_fds, O_CLOEXEC);
   if (ret < 0)
    _exit(PIDFD_ERROR);

   recycled_pid = fork();
   if (recycled_pid < 0)
    _exit(PIDFD_ERROR);

   if (recycled_pid == 0) {
    close(pipe_fds[1]);
    (void)read(pipe_fds[0], &c, 1);
    close(pipe_fds[0]);

    _exit(130);
   }





   close(pipe_fds[0]);
   ret = kill(recycled_pid, SIGSTOP);
   close(pipe_fds[1]);
   if (ret) {
    (void)wait_for_pid(recycled_pid);
    _exit(PIDFD_ERROR);
   }






   if (recycled_pid == PID_RECYCLE) {
    ret = sys_pidfd_send_signal(pidfd, SIGCONT,
           ((void*)0), 0);
    if (ret && errno == ESRCH)
     child_ret = 128;
    else
     child_ret = 131;
   }


   ret = kill(recycled_pid, SIGCONT);
   if (ret)
    (void)kill(recycled_pid, SIGKILL);

   if (wait_for_pid(recycled_pid))
    _exit(PIDFD_ERROR);

   switch (child_ret) {
   case 131:

   case 128:
    _exit(child_ret);
   case 130:
    break;
   default:

    _exit(PIDFD_ERROR);
   }






   if (recycled_pid > PIDFD_MAX_DEFAULT)
    _exit(129);
  }


  _exit(129);
 }

 ret = wait_for_pid(pid1);
 switch (ret) {
 case 131:
  ksft_exit_fail_msg(
   "%s test: Managed to signal recycled pid %d\n",
   test_name, PID_RECYCLE);
 case 130:
  ksft_exit_fail_msg("%s test: Failed to recycle pid %d\n",
       test_name, PID_RECYCLE);
 case 129:
  ksft_print_msg("%s test: Skipping test\n", test_name);
  ret = 0;
  break;
 case 128:
  ksft_test_result_pass(
   "%s test: Failed to signal recycled pid as expected\n",
   test_name);
  ret = 0;
  break;
 default :
  ksft_exit_fail_msg("%s test: Error while running tests\n",
       test_name);
 }

 return ret;
}
