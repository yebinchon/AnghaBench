
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RIODesc ;
typedef int RIO ;


 char* r_str_ichr (char*,char) ;
 int run_new_command (int *,int *,char const*) ;
 int run_old_command (int *,int *,char const*) ;

int run_ioctl_command(RIO *io, RIODesc *iodesc, const char *buf) {
 buf = r_str_ichr ((char *) buf, ' ');

 if (!run_new_command (io, iodesc, buf)) {
  return run_old_command (io, iodesc, buf);
 }
 return 0;
}
