
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct variable {int dummy; } ;
struct arguments {struct arguments* next; struct variable* indicator; struct variable* variable; } ;


 scalar_t__ mm_alloc (int) ;

void
add_variable_to_head(struct arguments **list, struct variable *var, struct variable *ind)
{
 struct arguments *p = (struct arguments *) mm_alloc(sizeof(struct arguments));

 p->variable = var;
 p->indicator = ind;
 p->next = *list;
 *list = p;
}
