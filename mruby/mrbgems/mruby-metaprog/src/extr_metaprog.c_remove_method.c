
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RClass {int mt; } ;
typedef int mrb_value ;
typedef int mrb_sym ;
typedef int mrb_state ;
typedef scalar_t__ khiter_t ;


 int MRB_CLASS_ORIGIN (struct RClass*) ;
 int h ;
 int kh_del (int ,int *,int,scalar_t__) ;
 scalar_t__ kh_end (int) ;
 scalar_t__ kh_get (int ,int *,int,int ) ;
 int khash_t (int ) ;
 struct RClass* mrb_class_ptr (int ) ;
 int mrb_funcall (int *,int ,char*,int,int ) ;
 int mrb_name_error (int *,int ,char*,int ,int ) ;
 int mrb_symbol_value (int ) ;
 int mt ;

__attribute__((used)) static void
remove_method(mrb_state *mrb, mrb_value mod, mrb_sym mid)
{
  struct RClass *c = mrb_class_ptr(mod);
  khash_t(mt) *h;
  khiter_t k;

  MRB_CLASS_ORIGIN(c);
  h = c->mt;

  if (h) {
    k = kh_get(mt, mrb, h, mid);
    if (k != kh_end(h)) {
      kh_del(mt, mrb, h, k);
      mrb_funcall(mrb, mod, "method_removed", 1, mrb_symbol_value(mid));
      return;
    }
  }

  mrb_name_error(mrb, mid, "method '%n' not defined in %v", mid, mod);
}
