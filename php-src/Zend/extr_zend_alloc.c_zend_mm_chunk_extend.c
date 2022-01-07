
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* storage; } ;
typedef TYPE_2__ zend_mm_heap ;
struct TYPE_6__ {int (* chunk_extend ) (TYPE_4__*,void*,size_t,size_t) ;} ;
struct TYPE_8__ {TYPE_1__ handlers; } ;


 void* MAP_FAILED ;
 scalar_t__ UNEXPECTED (TYPE_4__*) ;
 int ZEND_ASSERT (int) ;
 void* mremap (void*,size_t,size_t,int ) ;
 int stub1 (TYPE_4__*,void*,size_t,size_t) ;
 int * zend_mm_mmap_fixed (char*,size_t) ;

__attribute__((used)) static int zend_mm_chunk_extend(zend_mm_heap *heap, void *addr, size_t old_size, size_t new_size)
{
 return (zend_mm_mmap_fixed((char*)addr + old_size, new_size - old_size) != ((void*)0));



}
