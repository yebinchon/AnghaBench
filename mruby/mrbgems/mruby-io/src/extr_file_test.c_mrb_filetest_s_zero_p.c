
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_false_value () ;
 int mrb_get_args (int *,char*,int *) ;
 scalar_t__ mrb_stat (int *,int ,struct stat*) ;
 int mrb_true_value () ;

mrb_value
mrb_filetest_s_zero_p(mrb_state *mrb, mrb_value klass)
{
  struct stat st;
  mrb_value obj;

  mrb_get_args(mrb, "o", &obj);

  if (mrb_stat(mrb, obj, &st) < 0)
    return mrb_false_value();
  if (st.st_size == 0)
    return mrb_true_value();

  return mrb_false_value();
}
