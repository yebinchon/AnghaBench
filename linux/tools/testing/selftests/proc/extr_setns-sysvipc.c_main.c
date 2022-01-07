
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int buf ;


 int CLONE_NEWIPC ;
 scalar_t__ ENOSYS ;
 scalar_t__ EPERM ;
 int IPC_CREAT ;
 int IPC_PRIVATE ;
 int O_RDONLY ;
 int S32 ;
 int S64 ;
 int SIGTERM ;
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
 int shmget (int ,int,int ) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ strlen (int ) ;
 int unshare (int ) ;
 int write (int,char*,int) ;

int main(void)
{
 int fd[2];
 char _ = 0;
 int nsfd;

 atexit(f);


 if (unshare(CLONE_NEWIPC) == -1) {
  if (errno == ENOSYS || errno == EPERM) {
   return 4;
  }
  return 1;
 }

 if (shmget(IPC_PRIVATE, 1, IPC_CREAT) == -1) {
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
  if (unshare(CLONE_NEWIPC) == -1) {
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
  snprintf(buf, sizeof(buf), "/proc/%u/ns/ipc", pid);
  nsfd = open(buf, O_RDONLY);
  if (nsfd == -1) {
   return 1;
  }
 }


 (void)open("/proc/sysvipc/shm", O_RDONLY);

 if (setns(nsfd, CLONE_NEWIPC) == -1) {
  return 1;
 }

 kill(pid, SIGTERM);
 pid = 0;

 {
  char buf[4096];
  ssize_t rv;
  int fd;

  fd = open("/proc/sysvipc/shm", O_RDONLY);
  if (fd == -1) {
   return 1;
  }



  rv = read(fd, buf, sizeof(buf));
  if (rv == strlen("       key      shmid perms       size  cpid  lpid nattch   uid   gid  cuid  cgid      atime      dtime      ctime        rss       swap\n")) {
   assert(memcmp(buf, "       key      shmid perms       size  cpid  lpid nattch   uid   gid  cuid  cgid      atime      dtime      ctime        rss       swap\n", strlen("       key      shmid perms       size  cpid  lpid nattch   uid   gid  cuid  cgid      atime      dtime      ctime        rss       swap\n")) == 0);
  } else if (rv == strlen("       key      shmid perms                  size  cpid  lpid nattch   uid   gid  cuid  cgid      atime      dtime      ctime                   rss                  swap\n")) {
   assert(memcmp(buf, "       key      shmid perms                  size  cpid  lpid nattch   uid   gid  cuid  cgid      atime      dtime      ctime                   rss                  swap\n", strlen("       key      shmid perms                  size  cpid  lpid nattch   uid   gid  cuid  cgid      atime      dtime      ctime                   rss                  swap\n")) == 0);
  } else {
   assert(0);
  }
 }

 return 0;
}
