
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;


 int * lappend (int *,void*) ;
 scalar_t__ list_member_ptr (int *,void*) ;

List *
list_append_unique_ptr(List *list, void *datum)
{
 if (list_member_ptr(list, datum))
  return list;
 else
  return lappend(list, datum);
}
