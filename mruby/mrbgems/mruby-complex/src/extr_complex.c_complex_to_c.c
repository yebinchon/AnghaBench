
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;



__attribute__((used)) static mrb_value
complex_to_c(mrb_state *mrb, mrb_value self)
{
  return self;
}
