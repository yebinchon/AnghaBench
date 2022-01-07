
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
 int mrb_equal (int *,int ,int ) ;
 int mrb_false_value () ;
 int mrb_get_args (int *,char*,int *) ;
 int mrb_obj_class (int *,int ) ;
 scalar_t__ mrb_obj_equal (int *,int ,int ) ;
 int mrb_obj_is_instance_of (int *,int ,int ) ;
 struct RRange* mrb_range_ptr (int *,int ) ;
 int mrb_true_value () ;

__attribute__((used)) static mrb_value
range_eq(mrb_state *mrb, mrb_value range)
{
  struct RRange *rr;
  struct RRange *ro;
  mrb_value obj;
  mrb_bool v1, v2;

  mrb_get_args(mrb, "o", &obj);

  if (mrb_obj_equal(mrb, range, obj)) return mrb_true_value();
  if (!mrb_obj_is_instance_of(mrb, obj, mrb_obj_class(mrb, range))) {
    return mrb_false_value();
  }

  rr = mrb_range_ptr(mrb, range);
  ro = mrb_range_ptr(mrb, obj);
  v1 = mrb_equal(mrb, RANGE_BEG(rr), RANGE_BEG(ro));
  v2 = mrb_equal(mrb, RANGE_END(rr), RANGE_END(ro));
  if (!v1 || !v2 || RANGE_EXCL(rr) != RANGE_EXCL(ro)) {
    return mrb_false_value();
  }
  return mrb_true_value();
}
