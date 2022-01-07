
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ECPGtype {int dummy; } ;
struct ECPGstruct_member {struct ECPGstruct_member* next; struct ECPGtype* type; int name; } ;


 scalar_t__ mm_alloc (int) ;
 int mm_strdup (char const*) ;

void
ECPGmake_struct_member(const char *name, struct ECPGtype *type, struct ECPGstruct_member **start)
{
 struct ECPGstruct_member *ptr,
      *ne =
 (struct ECPGstruct_member *) mm_alloc(sizeof(struct ECPGstruct_member));

 ne->name = mm_strdup(name);
 ne->type = type;
 ne->next = ((void*)0);

 for (ptr = *start; ptr && ptr->next; ptr = ptr->next);

 if (ptr)
  ptr->next = ne;
 else
  *start = ne;
}
