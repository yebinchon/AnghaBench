
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int narray; int array; } ;
typedef TYPE_1__ filemap_t ;
struct TYPE_7__ {char* path; int action; int newsize; int oldsize; int pagemap; int isrelfile; } ;
typedef TYPE_2__ file_entry_t ;
typedef int RelFileNode ;
typedef int ForkNumber ;
typedef int BlockNumber ;


 int Assert (int ) ;
 int BLCKSZ ;






 int RELSEG_SIZE ;
 TYPE_2__** bsearch (TYPE_2__**,int ,int ,int,int ) ;
 int datapagemap_add (int *,int) ;
 char* datasegpath (int ,int ,int) ;
 TYPE_1__* filemap ;
 int path_cmp ;
 int pfree (char*) ;
 int pg_fatal (char*,char*) ;

void
process_block_change(ForkNumber forknum, RelFileNode rnode, BlockNumber blkno)
{
 char *path;
 file_entry_t key;
 file_entry_t *key_ptr;
 file_entry_t *entry;
 BlockNumber blkno_inseg;
 int segno;
 filemap_t *map = filemap;
 file_entry_t **e;

 Assert(map->array);

 segno = blkno / RELSEG_SIZE;
 blkno_inseg = blkno % RELSEG_SIZE;

 path = datasegpath(rnode, forknum, segno);

 key.path = (char *) path;
 key_ptr = &key;

 e = bsearch(&key_ptr, map->array, map->narray, sizeof(file_entry_t *),
    path_cmp);
 if (e)
  entry = *e;
 else
  entry = ((void*)0);
 pfree(path);

 if (entry)
 {
  Assert(entry->isrelfile);

  switch (entry->action)
  {
   case 130:
   case 128:

    if ((blkno_inseg + 1) * BLCKSZ <= entry->newsize)
     datapagemap_add(&entry->pagemap, blkno_inseg);
    break;

   case 132:





    if ((blkno_inseg + 1) * BLCKSZ <= entry->oldsize)
     datapagemap_add(&entry->pagemap, blkno_inseg);
    break;

   case 133:
   case 129:
    break;

   case 131:
    pg_fatal("unexpected page modification for directory or symbolic link \"%s\"", entry->path);
  }
 }
 else
 {






 }
}
