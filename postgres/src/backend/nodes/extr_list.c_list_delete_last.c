
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;


 int * NIL ;
 int check_list_invariants (int *) ;
 int list_free (int *) ;
 int list_length (int *) ;
 int * list_truncate (int *,int) ;

List *
list_delete_last(List *list)
{
 check_list_invariants(list);

 if (list == NIL)
  return NIL;


 if (list_length(list) <= 1)
 {
  list_free(list);
  return NIL;
 }

 return list_truncate(list, list_length(list) - 1);
}
