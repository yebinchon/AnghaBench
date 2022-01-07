
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_ary_replace (int *,int ,int ) ;
 int mrb_get_args (int *,char*,int *) ;

__attribute__((used)) static mrb_value
mrb_ary_replace_m(mrb_state *mrb, mrb_value self)
{
  mrb_value other;

  mrb_get_args(mrb, "A", &other);
  mrb_ary_replace(mrb, self, other);

  return self;
}
