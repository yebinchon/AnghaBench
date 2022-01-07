
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {void* last; TYPE_1__* arena; } ;
struct TYPE_4__ {char* ptr; } ;
typedef TYPE_2__ MYSQLND_MEMORY_POOL ;


 int DBG_ENTER (char*) ;
 int DBG_VOID_RETURN ;

__attribute__((used)) static void
mysqlnd_mempool_free_chunk(MYSQLND_MEMORY_POOL * pool, void * ptr)
{
 DBG_ENTER("mysqlnd_mempool_free_chunk");


 if (ptr == pool->last) {




  pool->arena->ptr = (char*)ptr;
  pool->last = ((void*)0);
 }

 DBG_VOID_RETURN;
}
