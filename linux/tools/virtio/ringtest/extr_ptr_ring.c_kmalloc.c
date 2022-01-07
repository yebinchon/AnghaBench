
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int __GFP_ZERO ;
 void* memalign (int,unsigned int) ;
 int memset (void*,int ,unsigned int) ;

__attribute__((used)) static void *kmalloc(unsigned size, gfp_t gfp)
{
 void *p = memalign(64, size);
 if (!p)
  return p;

 if (gfp & __GFP_ZERO)
  memset(p, 0, size);
 return p;
}
