
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int length; int max_length; int * elements; int * initial_elements; } ;
typedef int ListCell ;
typedef TYPE_1__ List ;


 int Assert (int) ;
 int GetMemoryChunkContext (TYPE_1__*) ;
 scalar_t__ MemoryContextAlloc (int ,int) ;
 TYPE_1__* NIL ;
 int VALGRIND_MAKE_MEM_NOACCESS (int *,int) ;
 int check_list_invariants (TYPE_1__*) ;
 int list_free (TYPE_1__*) ;
 int memcpy (int *,int *,int) ;
 int memmove (int *,int *,int) ;
 int pfree (int *) ;
 int wipe_mem (int *,int) ;

List *
list_delete_nth_cell(List *list, int n)
{
 check_list_invariants(list);

 Assert(n >= 0 && n < list->length);






 if (list->length == 1)
 {
  list_free(list);
  return NIL;
 }
 memmove(&list->elements[n], &list->elements[n + 1],
   (list->length - 1 - n) * sizeof(ListCell));
 list->length--;
 return list;
}
