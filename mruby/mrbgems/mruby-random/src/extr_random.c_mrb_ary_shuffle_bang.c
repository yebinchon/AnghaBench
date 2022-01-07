
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rand_state ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef size_t mrb_int ;


 int RARRAY_LEN (int ) ;
 int * RARRAY_PTR (int ) ;
 int mrb_ary_modify (int *,int ) ;
 int mrb_ary_ptr (int ) ;
 size_t mrb_fixnum (int ) ;
 int mrb_fixnum_value (int) ;
 int mrb_get_args (int *,char*,int *) ;
 scalar_t__ mrb_nil_p (int ) ;
 int mrb_nil_value () ;
 int random_check (int *,int ) ;
 int * random_default_state (int *) ;
 int * random_ptr (int ) ;
 int random_rand (int *,int *,int ) ;

__attribute__((used)) static mrb_value
mrb_ary_shuffle_bang(mrb_state *mrb, mrb_value ary)
{
  mrb_int i;
  mrb_value max;
  mrb_value r = mrb_nil_value();
  rand_state *random;

  if (RARRAY_LEN(ary) > 1) {
    mrb_get_args(mrb, "|o", &r);

    if (mrb_nil_p(r)) {
      random = random_default_state(mrb);
    }
    else {
      random_check(mrb, r);
      random = random_ptr(r);
    }
    mrb_ary_modify(mrb, mrb_ary_ptr(ary));
    max = mrb_fixnum_value(RARRAY_LEN(ary));
    for (i = RARRAY_LEN(ary) - 1; i > 0; i--) {
      mrb_int j;
      mrb_value *ptr = RARRAY_PTR(ary);
      mrb_value tmp;

      j = mrb_fixnum(random_rand(mrb, random, max));

      tmp = ptr[i];
      ptr[i] = ptr[j];
      ptr[j] = tmp;
    }
  }

  return ary;
}
