
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nlist; int narray; int * last; TYPE_2__* first; TYPE_2__** array; } ;
typedef TYPE_1__ filemap_t ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_2__ file_entry_t ;


 int Assert (int) ;
 scalar_t__ pg_realloc (TYPE_2__**,int) ;

__attribute__((used)) static void
filemap_list_to_array(filemap_t *map)
{
 int narray;
 file_entry_t *entry,
      *next;

 map->array = (file_entry_t **)
  pg_realloc(map->array,
       (map->nlist + map->narray) * sizeof(file_entry_t *));

 narray = map->narray;
 for (entry = map->first; entry != ((void*)0); entry = next)
 {
  map->array[narray++] = entry;
  next = entry->next;
  entry->next = ((void*)0);
 }
 Assert(narray == map->nlist + map->narray);
 map->narray = narray;
 map->nlist = 0;
 map->first = map->last = ((void*)0);
}
