
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* storage; } ;
typedef TYPE_2__ zend_mm_heap ;
struct TYPE_6__ {int (* chunk_free ) (TYPE_4__*,void*,size_t) ;} ;
struct TYPE_8__ {TYPE_1__ handlers; } ;


 scalar_t__ UNEXPECTED (TYPE_4__*) ;
 int stub1 (TYPE_4__*,void*,size_t) ;
 int zend_mm_munmap (void*,size_t) ;

__attribute__((used)) static void zend_mm_chunk_free(zend_mm_heap *heap, void *addr, size_t size)
{






 zend_mm_munmap(addr, size);
}
