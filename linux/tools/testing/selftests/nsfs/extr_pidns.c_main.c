
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_ino; } ;
struct cr_clone_arg {int stack_ptr; } ;
typedef scalar_t__ pid_t ;
typedef int path ;


 int CLONE_NEWPID ;
 int CLONE_NEWUSER ;
 scalar_t__ EPERM ;
 int NS_GET_PARENT ;
 int O_RDONLY ;
 int SIGCHLD ;
 int SIGKILL ;
 int child ;
 scalar_t__ clone (int ,int ,int,int *) ;
 scalar_t__ errno ;
 scalar_t__ fstat (int,struct stat*) ;
 int ioctl (int,int ) ;
 int kill (scalar_t__,int ) ;
 int open (char*,int ) ;
 int pr_err (char*,...) ;
 int snprintf (char*,int,char*,char*,...) ;
 scalar_t__ stat (char*,struct stat*) ;
 int wait (int *) ;

int main(int argc, char *argv[])
{
 char *ns_strs[] = {"pid", "user"};
 char path[] = "/proc/0123456789/ns/pid";
 struct cr_clone_arg ca;
 struct stat st1, st2;
 int ns, pns, i;
 pid_t pid;

 pid = clone(child, ca.stack_ptr, CLONE_NEWUSER | CLONE_NEWPID | SIGCHLD, ((void*)0));
 if (pid < 0)
  return pr_err("clone");

 for (i = 0; i < 2; i++) {
  snprintf(path, sizeof(path), "/proc/%d/ns/%s", pid, ns_strs[i]);
  ns = open(path, O_RDONLY);
  if (ns < 0)
   return pr_err("Unable to open %s", path);

  pns = ioctl(ns, NS_GET_PARENT);
  if (pns < 0)
   return pr_err("Unable to get a parent pidns");

  snprintf(path, sizeof(path), "/proc/self/ns/%s", ns_strs[i]);
  if (stat(path, &st2))
   return pr_err("Unable to stat %s", path);
  if (fstat(pns, &st1))
   return pr_err("Unable to stat the parent pidns");
  if (st1.st_ino != st2.st_ino)
   return pr_err("NS_GET_PARENT returned a wrong namespace");

  if (ioctl(pns, NS_GET_PARENT) >= 0 || errno != EPERM)
   return pr_err("Don't get EPERM");
 }

 kill(pid, SIGKILL);
 wait(((void*)0));
 return 0;
}
