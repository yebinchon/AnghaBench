
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ECPGstruct_member {struct ECPGstruct_member* type; struct ECPGstruct_member* name; struct ECPGstruct_member* next; } ;


 int free (struct ECPGstruct_member*) ;

void
ECPGfree_struct_member(struct ECPGstruct_member *rm)
{
 while (rm)
 {
  struct ECPGstruct_member *p = rm;

  rm = rm->next;
  free(p->name);
  free(p->type);
  free(p);
 }
}
