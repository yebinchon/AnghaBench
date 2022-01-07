
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;


 int * NIL ;
 int check_list_invariants (int *) ;
 int * list_delete_nth_cell (int *,int ) ;

List *
list_delete_first(List *list)
{
 check_list_invariants(list);

 if (list == NIL)
  return NIL;

 return list_delete_nth_cell(list, 0);
}
