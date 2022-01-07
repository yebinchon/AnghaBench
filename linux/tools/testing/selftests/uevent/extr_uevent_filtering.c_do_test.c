
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_val ;
typedef int uint64_t ;
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
typedef int sigset_t ;
typedef scalar_t__ pid_t ;


 unsigned long CLONE_NEWNET ;
 unsigned long CLONE_NEWUSER ;
 scalar_t__ EINTR ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int SIGCHLD ;
 int SIGTERM ;
 int SIGUSR1 ;
 int SIG_BLOCK ;
 int _exit (int ) ;
 scalar_t__ errno ;
 scalar_t__ fork () ;
 int fprintf (int ,char*,...) ;
 int kill (scalar_t__,int ) ;
 int read_nointr (int,int *,int) ;
 int set_death_signal () ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 int sigtimedwait (int *,int *,struct timespec*) ;
 int stderr ;
 char* strerror (scalar_t__) ;
 int trigger_uevent (int) ;
 scalar_t__ uevent_listener (unsigned long,int,int) ;
 int unshare (unsigned long) ;
 int wait_for_pid (scalar_t__) ;

__attribute__((used)) static int do_test(unsigned long pre_flags, unsigned long post_flags,
     bool expect_uevent, int sync_fd)
{
 int ret;
 uint64_t wait_val;
 pid_t pid;
 sigset_t mask;
 sigset_t orig_mask;
 struct timespec timeout;

 sigemptyset(&mask);
 sigaddset(&mask, SIGCHLD);

 ret = sigprocmask(SIG_BLOCK, &mask, &orig_mask);
 if (ret < 0) {
  fprintf(stderr, "%s- Failed to block SIGCHLD\n", strerror(errno));
  return -1;
 }

 pid = fork();
 if (pid < 0) {
  fprintf(stderr, "%s - Failed to fork() new process\n", strerror(errno));
  return -1;
 }

 if (pid == 0) {

  ret = set_death_signal();
  if (ret < 0) {
   fprintf(stderr, "Failed to set PR_SET_PDEATHSIG to SIGKILL\n");
   _exit(EXIT_FAILURE);
  }

  if (pre_flags & CLONE_NEWUSER) {
   ret = unshare(CLONE_NEWUSER);
   if (ret < 0) {
    fprintf(stderr,
     "%s - Failed to unshare user namespace\n",
     strerror(errno));
    _exit(EXIT_FAILURE);
   }
  }

  if (pre_flags & CLONE_NEWNET) {
   ret = unshare(CLONE_NEWNET);
   if (ret < 0) {
    fprintf(stderr,
     "%s - Failed to unshare network namespace\n",
     strerror(errno));
    _exit(EXIT_FAILURE);
   }
  }

  if (uevent_listener(post_flags, expect_uevent, sync_fd) < 0)
   _exit(EXIT_FAILURE);

  _exit(EXIT_SUCCESS);
 }

 ret = read_nointr(sync_fd, &wait_val, sizeof(wait_val));
 if (ret != sizeof(wait_val)) {
  fprintf(stderr, "Failed to synchronize with child process\n");
  _exit(EXIT_FAILURE);
 }




 ret = trigger_uevent(10);
 if (ret < 0)
  fprintf(stderr, "Failed triggering uevents\n");





 timeout.tv_sec = 2;
 timeout.tv_nsec = 0;

again:
 ret = sigtimedwait(&mask, ((void*)0), &timeout);
 if (ret < 0) {
  if (errno == EINTR)
   goto again;

  if (!expect_uevent)
   ret = kill(pid, SIGTERM);
  else
   ret = kill(pid, SIGUSR1);
  if (ret < 0)
   return -1;
 }

 ret = wait_for_pid(pid);
 if (ret < 0)
  return -1;

 return ret;
}
