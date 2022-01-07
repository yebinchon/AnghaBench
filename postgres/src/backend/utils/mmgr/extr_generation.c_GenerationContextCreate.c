
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int blockSize; int blocks; int * block; } ;
typedef int Size ;
typedef int MemoryContext ;
typedef TYPE_1__ GenerationContext ;


 int AllocHugeSizeIsValid (int) ;
 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 int GenerationChunk ;
 int GenerationMethods ;
 scalar_t__ Generation_CHUNKHDRSZ ;
 int MAXALIGN (int) ;
 int MemoryContextCreate (int ,int ,int *,int ,char const*) ;
 int MemoryContextStats (int ) ;
 int StaticAssertStmt (int,char*) ;
 int T_GenerationContext ;
 int TopMemoryContext ;
 int context ;
 int dlist_init (int *) ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,char const*) ;
 int errmsg (char*) ;
 scalar_t__ malloc (int) ;
 scalar_t__ offsetof (int ,int ) ;

MemoryContext
GenerationContextCreate(MemoryContext parent,
      const char *name,
      Size blockSize)
{
 GenerationContext *set;


 StaticAssertStmt(Generation_CHUNKHDRSZ == MAXALIGN(Generation_CHUNKHDRSZ),
      "sizeof(GenerationChunk) is not maxaligned");
 StaticAssertStmt(offsetof(GenerationChunk, context) + sizeof(MemoryContext) ==
      Generation_CHUNKHDRSZ,
      "padding calculation in GenerationChunk is wrong");







 if (blockSize != MAXALIGN(blockSize) ||
  blockSize < 1024 ||
  !AllocHugeSizeIsValid(blockSize))
  elog(ERROR, "invalid blockSize for memory context: %zu",
    blockSize);







 set = (GenerationContext *) malloc(MAXALIGN(sizeof(GenerationContext)));
 if (set == ((void*)0))
 {
  MemoryContextStats(TopMemoryContext);
  ereport(ERROR,
    (errcode(ERRCODE_OUT_OF_MEMORY),
     errmsg("out of memory"),
     errdetail("Failed while creating memory context \"%s\".",
         name)));
 }







 set->blockSize = blockSize;
 set->block = ((void*)0);
 dlist_init(&set->blocks);


 MemoryContextCreate((MemoryContext) set,
      T_GenerationContext,
      &GenerationMethods,
      parent,
      name);

 return (MemoryContext) set;
}
