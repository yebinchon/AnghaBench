
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int events; int fd; int revents; } ;


 scalar_t__ EAGAIN ;
 int EXIT_SUCCESS ;
 int POLLIN ;
 int SIGALRM ;
 int SIGKILL ;
 scalar_t__ SIG_ERR ;
 int alarm (int) ;
 int atoi (char*) ;
 int close (int) ;
 scalar_t__ errno ;
 int exit (int ) ;
 int fork () ;
 int handle_alarm ;
 int ksft_exit_fail_msg (char*,...) ;
 int ksft_exit_pass () ;
 int ksft_print_msg (char*,int) ;
 int ksft_test_result_pass (char*) ;
 int poll (struct pollfd*,int,int) ;
 scalar_t__ signal (int ,int ) ;
 int sleep (int) ;
 int strerror (scalar_t__) ;
 int sys_pidfd_open (int,int ) ;
 scalar_t__ sys_pidfd_send_signal (int,int ,int *,int ) ;
 scalar_t__ timeout ;
 scalar_t__ waitpid (int,int *,int ) ;

int main(int argc, char **argv)
{
 struct pollfd fds;
 int iter, nevents;
 int nr_iterations = 10000;

 fds.events = POLLIN;

 if (argc > 2)
  ksft_exit_fail_msg("Unexpected command line argument\n");

 if (argc == 2) {
  nr_iterations = atoi(argv[1]);
  if (nr_iterations <= 0)
   ksft_exit_fail_msg("invalid input parameter %s\n",
     argv[1]);
 }

 ksft_print_msg("running pidfd poll test for %d iterations\n",
  nr_iterations);

 for (iter = 0; iter < nr_iterations; iter++) {
  int pidfd;
  int child_pid = fork();

  if (child_pid < 0) {
   if (errno == EAGAIN) {
    iter--;
    continue;
   }
   ksft_exit_fail_msg(
    "%s - failed to fork a child process\n",
    strerror(errno));
  }

  if (child_pid == 0) {

   sleep(60);
   exit(EXIT_SUCCESS);
  }


  pidfd = sys_pidfd_open(child_pid, 0);
  if (pidfd < 0)
   ksft_exit_fail_msg("%s - pidfd_open failed\n",
     strerror(errno));


  if (signal(SIGALRM, handle_alarm) == SIG_ERR)
   ksft_exit_fail_msg("%s - signal failed\n",
     strerror(errno));
  alarm(3);


  if (sys_pidfd_send_signal(pidfd, SIGKILL, ((void*)0), 0))
   ksft_exit_fail_msg("%s - pidfd_send_signal failed\n",
     strerror(errno));


  fds.fd = pidfd;
  nevents = poll(&fds, 1, -1);


  if (nevents < 0)
   ksft_exit_fail_msg("%s - poll failed\n",
     strerror(errno));

  if (nevents != 1)
   ksft_exit_fail_msg("unexpected poll result: %d\n",
     nevents);

  if (!(fds.revents & POLLIN))
   ksft_exit_fail_msg(
    "unexpected event type received: 0x%x\n",
    fds.revents);

  if (timeout)
   ksft_exit_fail_msg(
    "death notification wait timeout\n");

  close(pidfd);

  if (waitpid(child_pid, ((void*)0), 0) < 0)
   ksft_exit_fail_msg("%s - waitpid failed\n",
     strerror(errno));

 }

 ksft_test_result_pass("pidfd poll test: pass\n");
 return ksft_exit_pass();
}
