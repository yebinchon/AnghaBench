
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RRange {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_bool ;


 int RANGE_BEG (struct RRange*) ;
 int RANGE_END (struct RRange*) ;
 scalar_t__ RANGE_EXCL (struct RRange*) ;
 int mrb_bool_value (int) ;
 int mrb_get_args (int *,char*,int *) ;
 struct RRange* mrb_range_ptr (int *,int ) ;
 scalar_t__ r_ge (int *,int ,int ) ;
 scalar_t__ r_gt (int *,int ,int ) ;
 scalar_t__ r_le (int *,int ,int ) ;

__attribute__((used)) static mrb_value
range_include(mrb_state *mrb, mrb_value range)
{
  mrb_value val;
  struct RRange *r = mrb_range_ptr(mrb, range);
  mrb_value beg, end;
  mrb_bool include_p;

  mrb_get_args(mrb, "o", &val);

  beg = RANGE_BEG(r);
  end = RANGE_END(r);
  include_p = r_le(mrb, beg, val) &&
              (RANGE_EXCL(r) ? r_gt(mrb, end, val)
                             : r_ge(mrb, end, val));

  return mrb_bool_value(include_p);
}
