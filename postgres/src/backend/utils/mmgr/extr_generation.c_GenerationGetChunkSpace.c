
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ size; } ;
typedef scalar_t__ Size ;
typedef int MemoryContext ;
typedef TYPE_1__ GenerationChunk ;


 int GENERATIONCHUNK_PRIVATE_LEN ;
 TYPE_1__* GenerationPointerGetChunk (void*) ;
 scalar_t__ Generation_CHUNKHDRSZ ;
 int VALGRIND_MAKE_MEM_DEFINED (TYPE_1__*,int ) ;
 int VALGRIND_MAKE_MEM_NOACCESS (TYPE_1__*,int ) ;

__attribute__((used)) static Size
GenerationGetChunkSpace(MemoryContext context, void *pointer)
{
 GenerationChunk *chunk = GenerationPointerGetChunk(pointer);
 Size result;

 VALGRIND_MAKE_MEM_DEFINED(chunk, GENERATIONCHUNK_PRIVATE_LEN);
 result = chunk->size + Generation_CHUNKHDRSZ;
 VALGRIND_MAKE_MEM_NOACCESS(chunk, GENERATIONCHUNK_PRIVATE_LEN);
 return result;
}
