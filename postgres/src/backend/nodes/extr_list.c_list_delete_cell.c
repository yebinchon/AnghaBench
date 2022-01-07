
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int elements; } ;
typedef int ListCell ;
typedef TYPE_1__ List ;


 TYPE_1__* list_delete_nth_cell (TYPE_1__*,int *) ;

List *
list_delete_cell(List *list, ListCell *cell)
{
 return list_delete_nth_cell(list, cell - list->elements);
}
