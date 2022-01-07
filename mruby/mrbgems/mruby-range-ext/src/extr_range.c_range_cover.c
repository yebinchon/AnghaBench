
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RRange {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int RANGE_BEG (struct RRange*) ;
 int RANGE_END (struct RRange*) ;
 scalar_t__ RANGE_EXCL (struct RRange*) ;
 int mrb_false_value () ;
 int mrb_get_args (int *,char*,int *) ;
 struct RRange* mrb_range_ptr (int *,int ) ;
 int mrb_true_value () ;
 scalar_t__ r_le (int *,int ,int ) ;
 scalar_t__ r_lt (int *,int ,int ) ;

__attribute__((used)) static mrb_value
range_cover(mrb_state *mrb, mrb_value range)
{
  mrb_value val;
  struct RRange *r = mrb_range_ptr(mrb, range);
  mrb_value beg, end;

  mrb_get_args(mrb, "o", &val);

  beg = RANGE_BEG(r);
  end = RANGE_END(r);

  if (r_le(mrb, beg, val)) {
    if (RANGE_EXCL(r)) {
      if (r_lt(mrb, val, end))
        return mrb_true_value();
    }
    else {
      if (r_le(mrb, val, end))
        return mrb_true_value();
    }
  }

  return mrb_false_value();
}
