
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ type; int length; scalar_t__ elements; } ;
typedef int ListCell ;
typedef TYPE_1__ List ;


 int Assert (int) ;
 TYPE_1__ const* NIL ;
 int check_list_invariants (TYPE_1__*) ;
 TYPE_1__* list_copy (TYPE_1__ const*) ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 TYPE_1__* new_list (scalar_t__,int) ;

List *
list_concat_copy(const List *list1, const List *list2)
{
 List *result;
 int new_len;

 if (list1 == NIL)
  return list_copy(list2);
 if (list2 == NIL)
  return list_copy(list1);

 Assert(list1->type == list2->type);

 new_len = list1->length + list2->length;
 result = new_list(list1->type, new_len);
 memcpy(result->elements, list1->elements,
     list1->length * sizeof(ListCell));
 memcpy(result->elements + list1->length, list2->elements,
     list2->length * sizeof(ListCell));

 check_list_invariants(result);
 return result;
}
