
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef size_t mrb_int ;


 int RARRAY_LEN (int ) ;
 int * RARRAY_PTR (int ) ;
 scalar_t__ mrb_array_p (int ) ;
 scalar_t__ mrb_equal (int *,int ,int ) ;
 int mrb_get_args (int *,char*,int *) ;
 int mrb_nil_value () ;

__attribute__((used)) static mrb_value
mrb_ary_rassoc(mrb_state *mrb, mrb_value ary)
{
  mrb_int i;
  mrb_value v, value;

  mrb_get_args(mrb, "o", &value);

  for (i = 0; i < RARRAY_LEN(ary); ++i) {
    v = RARRAY_PTR(ary)[i];
    if (mrb_array_p(v) &&
        RARRAY_LEN(v) > 1 &&
        mrb_equal(mrb, RARRAY_PTR(v)[1], value))
      return v;
  }
  return mrb_nil_value();
}
