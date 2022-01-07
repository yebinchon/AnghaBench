
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* methods; } ;
struct TYPE_5__ {int (* get_chunk_space ) (TYPE_2__*,void*) ;} ;
typedef int Size ;
typedef TYPE_2__* MemoryContext ;


 TYPE_2__* GetMemoryChunkContext (void*) ;
 int stub1 (TYPE_2__*,void*) ;

Size
GetMemoryChunkSpace(void *pointer)
{
 MemoryContext context = GetMemoryChunkContext(pointer);

 return context->methods->get_chunk_space(context, pointer);
}
