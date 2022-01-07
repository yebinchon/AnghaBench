
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int __GFP_ZERO ;
 void* kmalloc_array (size_t,size_t,int) ;

__attribute__((used)) static inline void *kcalloc(size_t n, size_t size, gfp_t flags)
{
 return kmalloc_array(n, size, flags | __GFP_ZERO);
}
