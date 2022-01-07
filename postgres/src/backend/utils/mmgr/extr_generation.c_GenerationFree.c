
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ nfree; scalar_t__ nchunks; scalar_t__ blksize; int node; } ;
struct TYPE_12__ {scalar_t__ requested_size; scalar_t__ size; int * context; TYPE_4__* block; } ;
struct TYPE_11__ {TYPE_4__* block; } ;
struct TYPE_10__ {int mem_allocated; int name; } ;
typedef TYPE_1__* MemoryContext ;
typedef TYPE_2__ GenerationContext ;
typedef TYPE_3__ GenerationChunk ;
typedef TYPE_4__ GenerationBlock ;


 int Assert (int) ;
 int GENERATIONCHUNK_PRIVATE_LEN ;
 TYPE_3__* GenerationPointerGetChunk (void*) ;
 int VALGRIND_MAKE_MEM_DEFINED (TYPE_3__*,int ) ;
 int WARNING ;
 int dlist_delete (int *) ;
 int elog (int ,char*,int ,TYPE_3__*) ;
 int free (TYPE_4__*) ;
 int sentinel_ok (void*,scalar_t__) ;
 int wipe_mem (void*,scalar_t__) ;

__attribute__((used)) static void
GenerationFree(MemoryContext context, void *pointer)
{
 GenerationContext *set = (GenerationContext *) context;
 GenerationChunk *chunk = GenerationPointerGetChunk(pointer);
 GenerationBlock *block;


 VALGRIND_MAKE_MEM_DEFINED(chunk, GENERATIONCHUNK_PRIVATE_LEN);

 block = chunk->block;
 chunk->context = ((void*)0);






 block->nfree += 1;

 Assert(block->nchunks > 0);
 Assert(block->nfree <= block->nchunks);


 if (block->nfree < block->nchunks)
  return;





 dlist_delete(&block->node);


 if (set->block == block)
  set->block = ((void*)0);

 context->mem_allocated -= block->blksize;
 free(block);
}
