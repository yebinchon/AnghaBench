
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* (* realloc ) (void*,int) ;} ;


 TYPE_1__ alloc ;
 int bcrash (char*,unsigned long) ;
 int num_allocs ;
 int os_atomic_inc_long (int *) ;
 int os_breakpoint () ;
 void* stub1 (void*,size_t) ;
 void* stub2 (void*,int) ;

void *brealloc(void *ptr, size_t size)
{
 if (!ptr)
  os_atomic_inc_long(&num_allocs);

 ptr = alloc.realloc(ptr, size);
 if (!ptr && !size)
  ptr = alloc.realloc(ptr, 1);
 if (!ptr) {
  os_breakpoint();
  bcrash("Out of memory while trying to allocate %lu bytes",
         (unsigned long)size);
 }

 return ptr;
}
