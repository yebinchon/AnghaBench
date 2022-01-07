
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void** elements; } ;
typedef int NodeTag ;
typedef void* ListCell ;
typedef TYPE_1__ List ;


 int check_list_invariants (TYPE_1__*) ;
 TYPE_1__* new_list (int ,int) ;

List *
list_make3_impl(NodeTag t, ListCell datum1, ListCell datum2,
    ListCell datum3)
{
 List *list = new_list(t, 3);

 list->elements[0] = datum1;
 list->elements[1] = datum2;
 list->elements[2] = datum3;
 check_list_invariants(list);
 return list;
}
