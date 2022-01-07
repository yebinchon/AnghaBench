
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_range_end (int *,int ) ;

__attribute__((used)) static mrb_value
range_end(mrb_state *mrb, mrb_value range)
{
  return mrb_range_end(mrb, range);
}
