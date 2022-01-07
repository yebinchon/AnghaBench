
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int KMALLOC_MAX_SIZE ;
 int __GFP_ZERO ;
 void** kvmalloc_array (unsigned int,int,int) ;

__attribute__((used)) static inline void **__ptr_ring_init_queue_alloc(unsigned int size, gfp_t gfp)
{
 if (size > KMALLOC_MAX_SIZE / sizeof(void *))
  return ((void*)0);
 return kvmalloc_array(size, sizeof(void *), gfp | __GFP_ZERO);
}
