
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mtime; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int fstat (int,struct stat*) ;
 int mrb_class_get (int *,char*) ;
 int mrb_false_value () ;
 scalar_t__ mrb_fixnum (int ) ;
 int mrb_fixnum_value (int ) ;
 int mrb_funcall (int *,int ,char*,int,int ) ;
 int mrb_io_fileno (int *,int ) ;
 int mrb_obj_value (int ) ;

__attribute__((used)) static mrb_value
mrb_file_mtime(mrb_state *mrb, mrb_value self)
{
  mrb_value obj;
  struct stat st;
  int fd;

  obj = mrb_obj_value(mrb_class_get(mrb, "Time"));
  fd = (int)mrb_fixnum(mrb_io_fileno(mrb, self));
  if (fstat(fd, &st) == -1)
    return mrb_false_value();
  return mrb_funcall(mrb, obj, "at", 1, mrb_fixnum_value(st.st_mtime));
}
