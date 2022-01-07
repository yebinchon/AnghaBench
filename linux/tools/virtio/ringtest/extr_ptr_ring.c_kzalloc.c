
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int __GFP_ZERO ;
 void* kmalloc (unsigned int,int) ;

__attribute__((used)) static inline void *kzalloc(unsigned size, gfp_t flags)
{
 return kmalloc(size, flags | __GFP_ZERO);
}
