
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int length; int elements; int type; } ;
typedef int ListCell ;
typedef TYPE_1__ const List ;


 TYPE_1__ const* NIL ;
 int check_list_invariants (TYPE_1__ const*) ;
 int memcpy (int ,int ,int) ;
 TYPE_1__ const* new_list (int ,int) ;

List *
list_copy(const List *oldlist)
{
 List *newlist;

 if (oldlist == NIL)
  return NIL;

 newlist = new_list(oldlist->type, oldlist->length);
 memcpy(newlist->elements, oldlist->elements,
     newlist->length * sizeof(ListCell));

 check_list_invariants(newlist);
 return newlist;
}
