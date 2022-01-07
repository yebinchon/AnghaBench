
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* head; } ;
struct TYPE_4__ {int touched; int val; struct TYPE_4__* next; } ;
typedef TYPE_1__ SimpleStringListCell ;
typedef TYPE_2__ SimpleStringList ;


 scalar_t__ strcmp (int ,char const*) ;

bool
simple_string_list_member(SimpleStringList *list, const char *val)
{
 SimpleStringListCell *cell;

 for (cell = list->head; cell; cell = cell->next)
 {
  if (strcmp(cell->val, val) == 0)
  {
   cell->touched = 1;
   return 1;
  }
 }
 return 0;
}
