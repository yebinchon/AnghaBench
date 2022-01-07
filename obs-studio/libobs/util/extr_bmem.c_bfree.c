
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* free ) (void*) ;} ;


 TYPE_1__ alloc ;
 int num_allocs ;
 int os_atomic_dec_long (int *) ;
 int stub1 (void*) ;

void bfree(void *ptr)
{
 if (ptr)
  os_atomic_dec_long(&num_allocs);
 alloc.free(ptr);
}
