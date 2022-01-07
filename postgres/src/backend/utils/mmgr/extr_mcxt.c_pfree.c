
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* methods; } ;
struct TYPE_6__ {int (* free_p ) (TYPE_2__*,void*) ;} ;
typedef TYPE_2__* MemoryContext ;


 TYPE_2__* GetMemoryChunkContext (void*) ;
 int VALGRIND_MEMPOOL_FREE (TYPE_2__*,void*) ;
 int stub1 (TYPE_2__*,void*) ;

void
pfree(void *pointer)
{
 MemoryContext context = GetMemoryChunkContext(pointer);

 context->methods->free_p(context, pointer);
 VALGRIND_MEMPOOL_FREE(context, pointer);
}
