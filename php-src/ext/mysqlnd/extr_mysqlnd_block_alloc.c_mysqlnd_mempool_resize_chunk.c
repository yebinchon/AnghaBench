
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* ptr; scalar_t__ end; } ;
struct TYPE_4__ {void* last; TYPE_2__* arena; } ;
typedef TYPE_1__ MYSQLND_MEMORY_POOL ;


 int DBG_ENTER (char*) ;
 int DBG_RETURN (void*) ;
 int MIN (size_t,size_t) ;
 long ZEND_MM_ALIGNED_SIZE (size_t) ;
 int memcpy (void*,void*,int ) ;
 void* zend_arena_alloc (TYPE_2__**,size_t) ;

__attribute__((used)) static void *
mysqlnd_mempool_resize_chunk(MYSQLND_MEMORY_POOL * pool, void * ptr, size_t old_size, size_t size)
{
 DBG_ENTER("mysqlnd_mempool_resize_chunk");



 if (ptr == pool->last
   && (ZEND_MM_ALIGNED_SIZE(size) <= ((char*)pool->arena->end - (char*)ptr))) {




  pool->arena->ptr = (char*)ptr + ZEND_MM_ALIGNED_SIZE(size);
  DBG_RETURN(ptr);
 }


 void *new_ptr = zend_arena_alloc(&pool->arena, size);
 memcpy(new_ptr, ptr, MIN(old_size, size));
 pool->last = ptr = new_ptr;
 DBG_RETURN(ptr);
}
