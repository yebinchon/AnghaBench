
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t zend_uintptr_t ;
struct TYPE_7__ {TYPE_4__* storage; } ;
typedef TYPE_2__ zend_mm_heap ;
struct TYPE_6__ {void* (* chunk_alloc ) (TYPE_4__*,size_t,size_t) ;} ;
struct TYPE_8__ {TYPE_1__ handlers; } ;


 scalar_t__ UNEXPECTED (TYPE_4__*) ;
 int ZEND_ASSERT (int) ;
 void* stub1 (TYPE_4__*,size_t,size_t) ;
 void* zend_mm_chunk_alloc_int (size_t,size_t) ;

__attribute__((used)) static void *zend_mm_chunk_alloc(zend_mm_heap *heap, size_t size, size_t alignment)
{







 return zend_mm_chunk_alloc_int(size, alignment);
}
