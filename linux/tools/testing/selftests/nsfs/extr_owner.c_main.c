
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_ino; } ;
typedef scalar_t__ pid_t ;
typedef int path ;


 int CLONE_NEWUSER ;
 int CLONE_NEWUTS ;
 scalar_t__ EPERM ;
 int NS_GET_USERNS ;
 int O_RDONLY ;
 int PR_SET_PDEATHSIG ;
 int SIGKILL ;
 int close (int) ;
 scalar_t__ errno ;
 scalar_t__ fork () ;
 scalar_t__ fstat (int,struct stat*) ;
 int ioctl (int,int ) ;
 int kill (scalar_t__,int ) ;
 int open (char*,int ) ;
 scalar_t__ pipe (int*) ;
 int pr_err (char*,...) ;
 int prctl (int ,int ) ;
 scalar_t__ read (int,char*,int) ;
 int sleep (int) ;
 int snprintf (char*,int,char*,scalar_t__) ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ unshare (int) ;
 int wait (int *) ;

int main(int argc, char *argvp[])
{
 int pfd[2], ns, uns, init_uns;
 struct stat st1, st2;
 char path[128];
 pid_t pid;
 char c;

 if (pipe(pfd))
  return 1;

 pid = fork();
 if (pid < 0)
  return pr_err("fork");
 if (pid == 0) {
  prctl(PR_SET_PDEATHSIG, SIGKILL);
  if (unshare(CLONE_NEWUTS | CLONE_NEWUSER))
   return pr_err("unshare");
  close(pfd[0]);
  close(pfd[1]);
  while (1)
   sleep(1);
  return 0;
 }
 close(pfd[1]);
 if (read(pfd[0], &c, 1) != 0)
  return pr_err("Unable to read from pipe");
 close(pfd[0]);

 snprintf(path, sizeof(path), "/proc/%d/ns/uts", pid);
 ns = open(path, O_RDONLY);
 if (ns < 0)
  return pr_err("Unable to open %s", path);

 uns = ioctl(ns, NS_GET_USERNS);
 if (uns < 0)
  return pr_err("Unable to get an owning user namespace");

 if (fstat(uns, &st1))
  return pr_err("fstat");

 snprintf(path, sizeof(path), "/proc/%d/ns/user", pid);
 if (stat(path, &st2))
  return pr_err("stat");

 if (st1.st_ino != st2.st_ino)
  return pr_err("NS_GET_USERNS returned a wrong namespace");

 init_uns = ioctl(uns, NS_GET_USERNS);
 if (uns < 0)
  return pr_err("Unable to get an owning user namespace");

 if (ioctl(init_uns, NS_GET_USERNS) >= 0 || errno != EPERM)
  return pr_err("Don't get EPERM");

 if (unshare(CLONE_NEWUSER))
  return pr_err("unshare");

 if (ioctl(ns, NS_GET_USERNS) >= 0 || errno != EPERM)
  return pr_err("Don't get EPERM");
 if (ioctl(init_uns, NS_GET_USERNS) >= 0 || errno != EPERM)
  return pr_err("Don't get EPERM");

 kill(pid, SIGKILL);
 wait(((void*)0));
 return 0;
}
