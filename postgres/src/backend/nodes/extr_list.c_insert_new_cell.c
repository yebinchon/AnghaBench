
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; int max_length; int * elements; } ;
typedef int ListCell ;
typedef TYPE_1__ List ;


 int Assert (int) ;
 int enlarge_list (TYPE_1__*,int) ;
 int memmove (int *,int *,int) ;

__attribute__((used)) static ListCell *
insert_new_cell(List *list, int pos)
{
 Assert(pos >= 0 && pos <= list->length);


 if (list->length >= list->max_length)
  enlarge_list(list, list->length + 1);

 if (pos < list->length)
  memmove(&list->elements[pos + 1], &list->elements[pos],
    (list->length - pos) * sizeof(ListCell));
 list->length++;

 return &list->elements[pos];
}
