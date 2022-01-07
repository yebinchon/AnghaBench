
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int narray; TYPE_2__** array; } ;
typedef TYPE_1__ filemap_t ;
struct TYPE_7__ {int action; int newsize; int oldsize; int path; int pagemap; } ;
typedef TYPE_2__ file_entry_t ;
 int close_target_file () ;
 int create_target (TYPE_2__*) ;
 int execute_pagemap (int *,int ) ;
 int remove_target (TYPE_2__*) ;
 int rewind_copy_file_range (int ,int ,int ,int) ;
 int truncate_target_file (int ,int ) ;

void
copy_executeFileMap(filemap_t *map)
{
 file_entry_t *entry;
 int i;

 for (i = 0; i < map->narray; i++)
 {
  entry = map->array[i];
  execute_pagemap(&entry->pagemap, entry->path);

  switch (entry->action)
  {
   case 130:

    break;

   case 133:
    rewind_copy_file_range(entry->path, 0, entry->newsize, 1);
    break;

   case 128:
    truncate_target_file(entry->path, entry->newsize);
    break;

   case 132:
    rewind_copy_file_range(entry->path, entry->oldsize,
            entry->newsize, 0);
    break;

   case 131:
    create_target(entry);
    break;

   case 129:
    remove_target(entry);
    break;
  }
 }

 close_target_file();
}
