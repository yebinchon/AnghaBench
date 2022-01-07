
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int max_length; int length; int * elements; int * initial_elements; } ;
typedef int ListCell ;
typedef TYPE_1__ List ;


 int Assert (int) ;
 int GetMemoryChunkContext (TYPE_1__*) ;
 scalar_t__ MemoryContextAlloc (int ,int) ;
 int VALGRIND_MAKE_MEM_NOACCESS (int *,int) ;
 int memcpy (int *,int *,int) ;
 int pfree (int *) ;
 scalar_t__ repalloc (int *,int) ;
 int wipe_mem (int *,int) ;

__attribute__((used)) static void
enlarge_list(List *list, int min_size)
{
 int new_max_len;

 Assert(min_size > list->max_length);
 new_max_len = 16;
 while (new_max_len < min_size)
  new_max_len *= 2;





 if (list->elements == list->initial_elements)
 {







  list->elements = (ListCell *)
   MemoryContextAlloc(GetMemoryChunkContext(list),
          new_max_len * sizeof(ListCell));
  memcpy(list->elements, list->initial_elements,
      list->length * sizeof(ListCell));
  VALGRIND_MAKE_MEM_NOACCESS(list->initial_elements,
           list->max_length * sizeof(ListCell));

 }
 else
 {


  list->elements = (ListCell *) repalloc(list->elements,
              new_max_len * sizeof(ListCell));
 }

 list->max_length = new_max_len;
}
