
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* head; } ;
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ SimpleStringListCell ;
typedef TYPE_2__ SimpleStringList ;


 int pg_free (TYPE_1__*) ;

void
simple_string_list_destroy(SimpleStringList *list)
{
 SimpleStringListCell *cell;

 cell = list->head;
 while (cell != ((void*)0))
 {
  SimpleStringListCell *next;

  next = cell->next;
  pg_free(cell);
  cell = next;
 }
}
