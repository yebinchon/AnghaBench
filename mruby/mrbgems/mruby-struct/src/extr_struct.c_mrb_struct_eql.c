
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef size_t mrb_int ;


 scalar_t__ RSTRUCT_LEN (int ) ;
 int * RSTRUCT_PTR (int ) ;
 int mrb_bug (int *,char*) ;
 int mrb_eql (int *,int ,int ) ;
 int mrb_false_value () ;
 int mrb_get_args (int *,char*,int *) ;
 scalar_t__ mrb_obj_class (int *,int ) ;
 scalar_t__ mrb_obj_equal (int *,int ,int ) ;
 int mrb_true_value () ;

__attribute__((used)) static mrb_value
mrb_struct_eql(mrb_state *mrb, mrb_value s)
{
  mrb_value s2;
  mrb_value *ptr, *ptr2;
  mrb_int i, len;

  mrb_get_args(mrb, "o", &s2);
  if (mrb_obj_equal(mrb, s, s2)) {
    return mrb_true_value();
  }
  if (mrb_obj_class(mrb, s) != mrb_obj_class(mrb, s2)) {
    return mrb_false_value();
  }
  if (RSTRUCT_LEN(s) != RSTRUCT_LEN(s2)) {
    mrb_bug(mrb, "inconsistent struct");
  }
  ptr = RSTRUCT_PTR(s);
  ptr2 = RSTRUCT_PTR(s2);
  len = RSTRUCT_LEN(s);
  for (i=0; i<len; i++) {
    if (!mrb_eql(mrb, ptr[i], ptr2[i])) {
      return mrb_false_value();
    }
  }

  return mrb_true_value();
}
