
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_funcall (int *,int ,char*,int,...) ;
 scalar_t__ mrb_get_args (int *,char*,int *) ;
 int mrb_range_end (int *,int ) ;
 int mrb_to_int (int *,int ) ;

__attribute__((used)) static mrb_value
range_last(mrb_state *mrb, mrb_value range)
{
  mrb_value num;
  mrb_value array;

  if (mrb_get_args(mrb, "|o", &num) == 0) {
    return mrb_range_end(mrb, range);
  }

  array = mrb_funcall(mrb, range, "to_a", 0);
  return mrb_funcall(mrb, array, "last", 1, mrb_to_int(mrb, num));
}
