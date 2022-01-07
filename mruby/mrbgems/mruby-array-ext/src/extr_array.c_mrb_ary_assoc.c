
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef size_t mrb_int ;


 scalar_t__ RARRAY_LEN (int ) ;
 int * RARRAY_PTR (int ) ;
 int mrb_check_array_type (int *,int ) ;
 scalar_t__ mrb_equal (int *,int ,int ) ;
 int mrb_get_args (int *,char*,int *) ;
 int mrb_nil_p (int ) ;
 int mrb_nil_value () ;

__attribute__((used)) static mrb_value
mrb_ary_assoc(mrb_state *mrb, mrb_value ary)
{
  mrb_int i;
  mrb_value v, k;

  mrb_get_args(mrb, "o", &k);

  for (i = 0; i < RARRAY_LEN(ary); ++i) {
    v = mrb_check_array_type(mrb, RARRAY_PTR(ary)[i]);
    if (!mrb_nil_p(v) && RARRAY_LEN(v) > 0 &&
        mrb_equal(mrb, RARRAY_PTR(v)[0], k))
      return v;
  }
  return mrb_nil_value();
}
