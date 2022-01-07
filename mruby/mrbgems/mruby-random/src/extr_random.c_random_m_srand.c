
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int rand_state ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 int get_opt (int *) ;
 scalar_t__ mrb_fixnum (int ) ;
 int mrb_fixnum_value (int ) ;
 scalar_t__ mrb_nil_p (int ) ;
 scalar_t__ rand_seed (int *,scalar_t__) ;
 scalar_t__ rand_uint32 (int *) ;
 int * random_ptr (int ) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static mrb_value
random_m_srand(mrb_state *mrb, mrb_value self)
{
  uint32_t seed;
  uint32_t old_seed;
  mrb_value sv;
  rand_state *t = random_ptr(self);

  sv = get_opt(mrb);
  if (mrb_nil_p(sv)) {
    seed = (uint32_t)time(((void*)0)) + rand_uint32(t);
  }
  else {
    seed = (uint32_t)mrb_fixnum(sv);
  }
  old_seed = rand_seed(t, seed);

  return mrb_fixnum_value((mrb_int)old_seed);
}
