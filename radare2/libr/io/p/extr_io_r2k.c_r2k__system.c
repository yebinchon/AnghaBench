
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RIODesc ;
typedef int RIO ;


 int GetSystemModules (int *) ;
 int eprintf (char*) ;
 int run_ioctl_command (int *,int *,char const*) ;
 int strcmp (char const*,char*) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static char *r2k__system(RIO *io, RIODesc *fd, const char *cmd) {
 if (!strcmp (cmd, "")) {
  return ((void*)0);
 }
 if (!strncmp (cmd, "mod", 3)) {



 } else {

  (void)run_ioctl_command (io, fd, cmd);
  return ((void*)0);



 }
 return ((void*)0);
}
