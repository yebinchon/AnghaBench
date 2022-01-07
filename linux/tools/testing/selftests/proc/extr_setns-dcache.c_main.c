
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int buf ;


 int AF_UNIX ;
 int CLONE_NEWNET ;
 scalar_t__ ENOSYS ;
 scalar_t__ EPERM ;
 int O_RDONLY ;
 int S ;
 int SIGTERM ;
 int SOCK_STREAM ;
 int assert (int) ;
 int atexit (int ) ;
 scalar_t__ errno ;
 int f ;
 int fork () ;
 int kill (int,int ) ;
 scalar_t__ memcmp (char*,int ,scalar_t__) ;
 int open (char*,int ) ;
 int pause () ;
 int pid ;
 int pipe (int*) ;
 int read (int,char*,int) ;
 int setns (int,int ) ;
 int snprintf (char*,int,char*,int) ;
 int socket (int ,int ,int ) ;
 scalar_t__ strlen (int ) ;
 int unshare (int ) ;
 int write (int,char*,int) ;

int main(void)
{
 int fd[2];
 char _ = 0;
 int nsfd;

 atexit(f);


 if (unshare(CLONE_NEWNET) == -1) {
  if (errno == ENOSYS || errno == EPERM) {
   return 4;
  }
  return 1;
 }

 if (socket(AF_UNIX, SOCK_STREAM, 0) == -1) {
  return 1;
 }

 if (pipe(fd) == -1) {
  return 1;
 }

 pid = fork();
 if (pid == -1) {
  return 1;
 }

 if (pid == 0) {
  if (unshare(CLONE_NEWNET) == -1) {
   return 1;
  }

  if (write(fd[1], &_, 1) != 1) {
   return 1;
  }

  pause();

  return 0;
 }

 if (read(fd[0], &_, 1) != 1) {
  return 1;
 }

 {
  char buf[64];
  snprintf(buf, sizeof(buf), "/proc/%u/ns/net", pid);
  nsfd = open(buf, O_RDONLY);
  if (nsfd == -1) {
   return 1;
  }
 }


 (void)open("/proc/net/unix", O_RDONLY);

 if (setns(nsfd, CLONE_NEWNET) == -1) {
  return 1;
 }

 kill(pid, SIGTERM);
 pid = 0;

 {
  char buf[4096];
  ssize_t rv;
  int fd;

  fd = open("/proc/net/unix", O_RDONLY);
  if (fd == -1) {
   return 1;
  }


  rv = read(fd, buf, sizeof(buf));

  assert(rv == strlen("Num       RefCount Protocol Flags    Type St Inode Path\n"));
  assert(memcmp(buf, "Num       RefCount Protocol Flags    Type St Inode Path\n", strlen("Num       RefCount Protocol Flags    Type St Inode Path\n")) == 0);
 }

 return 0;
}
