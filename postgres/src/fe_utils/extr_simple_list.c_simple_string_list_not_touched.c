
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* head; } ;
struct TYPE_4__ {char const* val; int touched; struct TYPE_4__* next; } ;
typedef TYPE_1__ SimpleStringListCell ;
typedef TYPE_2__ SimpleStringList ;



const char *
simple_string_list_not_touched(SimpleStringList *list)
{
 SimpleStringListCell *cell;

 for (cell = list->head; cell; cell = cell->next)
 {
  if (!cell->touched)
   return cell->val;
 }
 return ((void*)0);
}
