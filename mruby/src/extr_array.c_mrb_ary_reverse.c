
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RArray {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;


 scalar_t__ ARY_LEN (struct RArray*) ;
 int * ARY_PTR (struct RArray*) ;
 int ARY_SET_LEN (struct RArray*,scalar_t__) ;
 struct RArray* ary_new_capa (int *,scalar_t__) ;
 struct RArray* mrb_ary_ptr (int ) ;
 int mrb_obj_value (struct RArray*) ;

__attribute__((used)) static mrb_value
mrb_ary_reverse(mrb_state *mrb, mrb_value self)
{
  struct RArray *a = mrb_ary_ptr(self), *b = ary_new_capa(mrb, ARY_LEN(a));
  mrb_int len = ARY_LEN(a);

  if (len > 0) {
    mrb_value *p1, *p2, *e;

    p1 = ARY_PTR(a);
    e = p1 + len;
    p2 = ARY_PTR(b) + len - 1;
    while (p1 < e) {
      *p2-- = *p1++;
    }
    ARY_SET_LEN(b, len);
  }
  return mrb_obj_value(b);
}
