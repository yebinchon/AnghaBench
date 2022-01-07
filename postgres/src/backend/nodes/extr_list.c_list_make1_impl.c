
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * elements; } ;
typedef int NodeTag ;
typedef int ListCell ;
typedef TYPE_1__ List ;


 int check_list_invariants (TYPE_1__*) ;
 TYPE_1__* new_list (int ,int) ;

List *
list_make1_impl(NodeTag t, ListCell datum1)
{
 List *list = new_list(t, 1);

 list->elements[0] = datum1;
 check_list_invariants(list);
 return list;
}
