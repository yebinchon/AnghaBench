
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int close (int) ;
 int mkstemp (char*) ;
 int mrb_str_new_cstr (int *,char*) ;
 int mrb_sys_fail (int *,int ) ;
 int unlink (char*) ;

mrb_value
mrb_sockettest_tmppath(mrb_state *mrb, mrb_value klass)
{
  char name[] = "mruby-socket.XXXXXXXX";
  int fd = mkstemp(name);
  if (fd == -1) {
    mrb_sys_fail(mrb, 0);
  }
  if (close(fd) == -1) {
    mrb_sys_fail(mrb, 0);
  }
  if (unlink(name) == -1) {
    mrb_sys_fail(mrb, 0);
  }
  return mrb_str_new_cstr(mrb, name);
}
