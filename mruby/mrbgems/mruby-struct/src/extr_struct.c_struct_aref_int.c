
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;


 int E_INDEX_ERROR ;
 scalar_t__ RSTRUCT_LEN (int ) ;
 int * RSTRUCT_PTR (int ) ;
 int mrb_raisef (int *,int ,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static mrb_value
struct_aref_int(mrb_state *mrb, mrb_value s, mrb_int i)
{
  mrb_int idx = i < 0 ? RSTRUCT_LEN(s) + i : i;

  if (idx < 0)
    mrb_raisef(mrb, E_INDEX_ERROR,
               "offset %i too small for struct(size:%i)", i, RSTRUCT_LEN(s));
  if (RSTRUCT_LEN(s) <= idx)
    mrb_raisef(mrb, E_INDEX_ERROR,
               "offset %i too large for struct(size:%i)", i, RSTRUCT_LEN(s));
  return RSTRUCT_PTR(s)[idx];
}
