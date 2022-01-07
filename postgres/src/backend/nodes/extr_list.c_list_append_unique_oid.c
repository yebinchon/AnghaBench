
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int List ;


 int * lappend_oid (int *,int ) ;
 scalar_t__ list_member_oid (int *,int ) ;

List *
list_append_unique_oid(List *list, Oid datum)
{
 if (list_member_oid(list, datum))
  return list;
 else
  return lappend_oid(list, datum);
}
