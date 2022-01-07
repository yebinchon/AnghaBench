
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 size_t SIZE_MAX ;
 void* kmalloc (size_t,int ) ;

__attribute__((used)) static inline void *kmalloc_array(size_t n, size_t size, gfp_t flags)
{
 if (size != 0 && n > SIZE_MAX / size)
  return ((void*)0);
 return kmalloc(n * size, flags);
}
