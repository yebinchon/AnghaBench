
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int O_RDONLY ;
 int exit (int ) ;
 int open (char const*,int ) ;
 int pr_err (char*) ;

int rw_ctl_init(const char *ctl_path)
{
 int ctl_fd;

 ctl_fd = open(ctl_path, O_RDONLY);
 if (ctl_fd == -1) {
  pr_err("Cannot open ctl_fd\n");
  goto error;
 }

 return ctl_fd;

error:
 exit(EXIT_FAILURE);
}
