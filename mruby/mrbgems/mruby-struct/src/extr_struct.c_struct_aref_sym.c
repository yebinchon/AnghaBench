
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef scalar_t__ mrb_sym ;
typedef int mrb_state ;
typedef size_t mrb_int ;


 size_t RARRAY_LEN (int ) ;
 int * RARRAY_PTR (int ) ;
 int * RSTRUCT_PTR (int ) ;
 int mrb_name_error (int *,scalar_t__,char*,scalar_t__) ;
 int mrb_nil_value () ;
 scalar_t__ mrb_symbol (int ) ;
 scalar_t__ mrb_symbol_p (int ) ;
 int struct_members (int *,int ) ;

__attribute__((used)) static mrb_value
struct_aref_sym(mrb_state *mrb, mrb_value obj, mrb_sym id)
{
  mrb_value members, *ptr;
  const mrb_value *ptr_members;
  mrb_int i, len;

  members = struct_members(mrb, obj);
  ptr_members = RARRAY_PTR(members);
  len = RARRAY_LEN(members);
  ptr = RSTRUCT_PTR(obj);
  for (i=0; i<len; i++) {
    mrb_value slot = ptr_members[i];
    if (mrb_symbol_p(slot) && mrb_symbol(slot) == id) {
      return ptr[i];
    }
  }
  mrb_name_error(mrb, id, "no member '%n' in struct", id);
  return mrb_nil_value();
}
