
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int length; } ;
typedef TYPE_1__ List ;


 TYPE_1__* NIL ;
 int list_length (TYPE_1__*) ;

List *
list_truncate(List *list, int new_size)
{
 if (new_size <= 0)
  return NIL;


 if (new_size < list_length(list))
  list->length = new_size;
 return list;
}
