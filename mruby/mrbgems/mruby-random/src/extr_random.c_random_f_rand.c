
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rand_state ;
typedef int mrb_value ;
typedef int mrb_state ;


 int get_opt (int *) ;
 int * random_default_state (int *) ;
 int random_rand (int *,int *,int ) ;

__attribute__((used)) static mrb_value
random_f_rand(mrb_state *mrb, mrb_value self)
{
  rand_state *t = random_default_state(mrb);
  return random_rand(mrb, t, get_opt(mrb));
}
