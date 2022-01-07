
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct variable {int dummy; } ;
struct arguments {struct arguments* next; struct variable* variable; } ;



void
remove_variable_from_list(struct arguments **list, struct variable *var)
{
 struct arguments *p,
      *prev = ((void*)0);
 bool found = 0;

 for (p = *list; p; p = p->next)
 {
  if (p->variable == var)
  {
   found = 1;
   break;
  }
  prev = p;
 }
 if (found)
 {
  if (prev)
   prev->next = p->next;
  else
   *list = p->next;
 }
}
