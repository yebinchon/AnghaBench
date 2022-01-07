
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int narray; int array; } ;
typedef TYPE_1__ filemap_t ;
typedef int file_entry_t ;


 TYPE_1__* filemap ;
 int filemap_list_to_array (TYPE_1__*) ;
 int final_filemap_cmp ;
 int qsort (int ,int ,int,int ) ;

void
filemap_finalize(void)
{
 filemap_t *map = filemap;

 filemap_list_to_array(map);
 qsort(map->array, map->narray, sizeof(file_entry_t *),
    final_filemap_cmp);
}
