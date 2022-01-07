
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rand_state ;
typedef int mrb_value ;
typedef int mrb_state ;


 int get_opt (int *) ;
 int * random_ptr (int ) ;
 int random_rand (int *,int *,int ) ;

__attribute__((used)) static mrb_value
random_m_rand(mrb_state *mrb, mrb_value self)
{
  mrb_value max;
  rand_state *t = random_ptr(self);

  max = get_opt(mrb);
  return random_rand(mrb, t, max);
}
