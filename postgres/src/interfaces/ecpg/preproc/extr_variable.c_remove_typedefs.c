
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typedefs {int brace_level; scalar_t__ type_enum; struct typedefs* next; struct typedefs* name; struct typedefs* type; struct typedefs* struct_member_list; } ;


 scalar_t__ ECPGt_struct ;
 scalar_t__ ECPGt_union ;
 int free (struct typedefs*) ;
 struct typedefs* types ;

void
remove_typedefs(int brace_level)
{
 struct typedefs *p,
      *prev;

 for (p = prev = types; p;)
 {
  if (p->brace_level >= brace_level)
  {

   if (p == types)
    prev = types = p->next;
   else
    prev->next = p->next;

   if (p->type->type_enum == ECPGt_struct || p->type->type_enum == ECPGt_union)
    free(p->struct_member_list);
   free(p->type);
   free(p->name);
   free(p);
   if (prev == types)
    p = types;
   else
    p = prev ? prev->next : ((void*)0);
  }
  else
  {
   prev = p;
   p = prev->next;
  }
 }
}
