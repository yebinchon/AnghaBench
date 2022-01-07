
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;


 int * lappend_int (int *,int) ;
 scalar_t__ list_member_int (int *,int) ;

List *
list_append_unique_int(List *list, int datum)
{
 if (list_member_int(list, datum))
  return list;
 else
  return lappend_int(list, datum);
}
