
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;


 int lshift (int *,scalar_t__,scalar_t__) ;
 scalar_t__ mrb_fixnum (int ) ;
 int mrb_get_args (int *,char*,scalar_t__*) ;
 int rshift (scalar_t__,scalar_t__) ;

__attribute__((used)) static mrb_value
fix_lshift(mrb_state *mrb, mrb_value x)
{
  mrb_int width, val;

  mrb_get_args(mrb, "i", &width);
  if (width == 0) {
    return x;
  }
  val = mrb_fixnum(x);
  if (val == 0) return x;
  if (width < 0) {
    return rshift(val, -width);
  }
  return lshift(mrb, val, width);
}
