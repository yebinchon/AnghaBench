
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int stats_string ;
struct TYPE_9__ {char* endptr; char* freeptr; struct TYPE_9__* next; } ;
struct TYPE_8__ {int size; scalar_t__ aset; } ;
struct TYPE_7__ {TYPE_3__** freelist; TYPE_4__* blocks; } ;
struct TYPE_6__ {int freespace; int totalspace; int freechunks; int nblocks; } ;
typedef int Size ;
typedef int (* MemoryStatsPrintFunc ) (int ,void*,char*) ;
typedef TYPE_1__ MemoryContextCounters ;
typedef int MemoryContext ;
typedef int AllocSetContext ;
typedef TYPE_2__* AllocSet ;
typedef TYPE_3__* AllocChunk ;
typedef TYPE_4__* AllocBlock ;


 int ALLOCSET_NUM_FREELISTS ;
 int ALLOC_CHUNKHDRSZ ;
 int MAXALIGN (int) ;
 int snprintf (char*,int,char*,int,int,int,int,int) ;

__attribute__((used)) static void
AllocSetStats(MemoryContext context,
     MemoryStatsPrintFunc printfunc, void *passthru,
     MemoryContextCounters *totals)
{
 AllocSet set = (AllocSet) context;
 Size nblocks = 0;
 Size freechunks = 0;
 Size totalspace;
 Size freespace = 0;
 AllocBlock block;
 int fidx;


 totalspace = MAXALIGN(sizeof(AllocSetContext));

 for (block = set->blocks; block != ((void*)0); block = block->next)
 {
  nblocks++;
  totalspace += block->endptr - ((char *) block);
  freespace += block->endptr - block->freeptr;
 }
 for (fidx = 0; fidx < ALLOCSET_NUM_FREELISTS; fidx++)
 {
  AllocChunk chunk;

  for (chunk = set->freelist[fidx]; chunk != ((void*)0);
    chunk = (AllocChunk) chunk->aset)
  {
   freechunks++;
   freespace += chunk->size + ALLOC_CHUNKHDRSZ;
  }
 }

 if (printfunc)
 {
  char stats_string[200];

  snprintf(stats_string, sizeof(stats_string),
     "%zu total in %zd blocks; %zu free (%zd chunks); %zu used",
     totalspace, nblocks, freespace, freechunks,
     totalspace - freespace);
  printfunc(context, passthru, stats_string);
 }

 if (totals)
 {
  totals->nblocks += nblocks;
  totals->freechunks += freechunks;
  totals->totalspace += totalspace;
  totals->freespace += freespace;
 }
}
