
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ size; } ;
typedef scalar_t__ Size ;
typedef int MemoryContext ;
typedef TYPE_1__* AllocChunk ;


 int ALLOCCHUNK_PRIVATE_LEN ;
 scalar_t__ ALLOC_CHUNKHDRSZ ;
 TYPE_1__* AllocPointerGetChunk (void*) ;
 int VALGRIND_MAKE_MEM_DEFINED (TYPE_1__*,int ) ;
 int VALGRIND_MAKE_MEM_NOACCESS (TYPE_1__*,int ) ;

__attribute__((used)) static Size
AllocSetGetChunkSpace(MemoryContext context, void *pointer)
{
 AllocChunk chunk = AllocPointerGetChunk(pointer);
 Size result;

 VALGRIND_MAKE_MEM_DEFINED(chunk, ALLOCCHUNK_PRIVATE_LEN);
 result = chunk->size + ALLOC_CHUNKHDRSZ;
 VALGRIND_MAKE_MEM_NOACCESS(chunk, ALLOCCHUNK_PRIVATE_LEN);
 return result;
}
