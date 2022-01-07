
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* last; int arena; } ;
typedef TYPE_1__ MYSQLND_MEMORY_POOL ;


 int DBG_ENTER (char*) ;
 int DBG_RETURN (void*) ;
 void* zend_arena_alloc (int *,size_t) ;

__attribute__((used)) static void *
mysqlnd_mempool_get_chunk(MYSQLND_MEMORY_POOL * pool, size_t size)
{
 void *ptr = ((void*)0);
 DBG_ENTER("mysqlnd_mempool_get_chunk");

 ptr = zend_arena_alloc(&pool->arena, size);
 pool->last = ptr;

 DBG_RETURN(ptr);
}
