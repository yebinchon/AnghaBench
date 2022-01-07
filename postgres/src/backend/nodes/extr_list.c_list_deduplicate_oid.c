
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int length; TYPE_1__* elements; } ;
struct TYPE_7__ {scalar_t__ oid_value; } ;
typedef TYPE_1__ ListCell ;
typedef TYPE_2__ List ;


 int Assert (int ) ;
 int IsOidList (TYPE_2__*) ;
 int check_list_invariants (TYPE_2__*) ;
 int list_length (TYPE_2__*) ;

void
list_deduplicate_oid(List *list)
{
 int len;

 Assert(IsOidList(list));
 len = list_length(list);
 if (len > 1)
 {
  ListCell *elements = list->elements;
  int i = 0;

  for (int j = 1; j < len; j++)
  {
   if (elements[i].oid_value != elements[j].oid_value)
    elements[++i].oid_value = elements[j].oid_value;
  }
  list->length = i + 1;
 }
 check_list_invariants(list);
}
