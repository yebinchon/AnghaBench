
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int rand_state ;
typedef int mrb_value ;
typedef int mrb_state ;


 int get_opt (int *) ;
 scalar_t__ mrb_fixnum (int ) ;
 scalar_t__ mrb_nil_p (int ) ;
 int rand_init (int *) ;
 int rand_seed (int *,int ) ;
 int * random_ptr (int ) ;

__attribute__((used)) static mrb_value
random_m_init(mrb_state *mrb, mrb_value self)
{
  mrb_value seed;
  rand_state *t;

  seed = get_opt(mrb);

  t = random_ptr(self);
  if (mrb_nil_p(seed)) {
    rand_init(t);
  }
  else {
    rand_seed(t, (uint32_t)mrb_fixnum(seed));
  }

  return self;
}
