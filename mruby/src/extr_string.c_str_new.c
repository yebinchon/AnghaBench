
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RString {int dummy; } ;
typedef int mrb_state ;


 int E_ARGUMENT_ERROR ;
 size_t MRB_INT_MAX ;
 scalar_t__ RSTR_EMBEDDABLE_P (size_t) ;
 int mrb_obj_alloc_string (int *) ;
 int mrb_raise (int *,int ,char*) ;
 scalar_t__ mrb_ro_data_p (char const*) ;
 struct RString* str_init_embed (int ,char const*,size_t) ;
 struct RString* str_init_nofree (int ,char const*,size_t) ;
 struct RString* str_init_normal (int *,int ,char const*,size_t) ;

__attribute__((used)) static struct RString*
str_new(mrb_state *mrb, const char *p, size_t len)
{
  if (RSTR_EMBEDDABLE_P(len)) {
    return str_init_embed(mrb_obj_alloc_string(mrb), p, len);
  }
  if (len >= MRB_INT_MAX) {
    mrb_raise(mrb, E_ARGUMENT_ERROR, "string size too big");
  }
  if (p && mrb_ro_data_p(p)) {
    return str_init_nofree(mrb_obj_alloc_string(mrb), p, len);
  }
  return str_init_normal(mrb, mrb_obj_alloc_string(mrb), p, len);
}
