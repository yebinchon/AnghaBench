
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct variable {int dummy; } ;
struct arguments {struct arguments* next; struct variable* indicator; struct variable* variable; } ;


 scalar_t__ mm_alloc (int) ;

void
add_variable_to_tail(struct arguments **list, struct variable *var, struct variable *ind)
{
 struct arguments *p,
      *new = (struct arguments *) mm_alloc(sizeof(struct arguments));

 for (p = *list; p && p->next; p = p->next);

 new->variable = var;
 new->indicator = ind;
 new->next = ((void*)0);

 if (p)
  p->next = new;
 else
  *list = new;
}
