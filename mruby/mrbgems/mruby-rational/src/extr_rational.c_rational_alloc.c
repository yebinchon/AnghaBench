
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_rational {int dummy; } ;
struct RIStruct {scalar_t__ inline_data; } ;
struct RClass {int dummy; } ;
struct RBasic {int dummy; } ;
typedef int mrb_state ;


 int MRB_TT_ISTRUCT ;
 scalar_t__ mrb_obj_alloc (int *,int ,struct RClass*) ;

__attribute__((used)) static struct RBasic*
rational_alloc(mrb_state *mrb, struct RClass *c, struct mrb_rational **p)
{
  struct RIStruct *s;

  s = (struct RIStruct*)mrb_obj_alloc(mrb, MRB_TT_ISTRUCT, c);
  *p = (struct mrb_rational*)s->inline_data;

  return (struct RBasic*)s;
}
