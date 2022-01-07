
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
list_make2_impl(NodeTag t, ListCell datum1, ListCell datum2)
{
 List *list = new_list(t, 2);

 list->elements[0] = datum1;
 list->elements[1] = datum2;
 check_list_invariants(list);
 return list;
}
