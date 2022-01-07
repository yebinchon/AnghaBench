
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; int max_length; int * elements; } ;
typedef int ListCell ;
typedef TYPE_1__ List ;


 int enlarge_list (TYPE_1__*,int) ;
 int memmove (int *,int *,int) ;

__attribute__((used)) static void
new_head_cell(List *list)
{

 if (list->length >= list->max_length)
  enlarge_list(list, list->length + 1);

 memmove(&list->elements[1], &list->elements[0],
   list->length * sizeof(ListCell));
 list->length++;
}
