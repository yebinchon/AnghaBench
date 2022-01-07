
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_bool ;


 int FALSE ;
 int mrb_get_args (int *,char*,int *,int *,int *) ;
 int mrb_range_raw_ptr (int ) ;
 int range_ptr_replace (int *,int ,int ,int ,int ) ;

__attribute__((used)) static mrb_value
range_initialize(mrb_state *mrb, mrb_value range)
{
  mrb_value beg, end;
  mrb_bool exclusive = FALSE;

  mrb_get_args(mrb, "oo|b", &beg, &end, &exclusive);
  range_ptr_replace(mrb, mrb_range_raw_ptr(range), beg, end, exclusive);
  return range;
}
