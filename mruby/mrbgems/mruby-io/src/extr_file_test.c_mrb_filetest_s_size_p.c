
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_fixnum_value (scalar_t__) ;
 int mrb_get_args (int *,char*,int *) ;
 int mrb_nil_value () ;
 scalar_t__ mrb_stat (int *,int ,struct stat*) ;

mrb_value
mrb_filetest_s_size_p(mrb_state *mrb, mrb_value klass)
{
  struct stat st;
  mrb_value obj;

  mrb_get_args(mrb, "o", &obj);

  if (mrb_stat(mrb, obj, &st) < 0)
    return mrb_nil_value();
  if (st.st_size == 0)
    return mrb_nil_value();

  return mrb_fixnum_value(st.st_size);
}
