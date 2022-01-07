
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (unsigned long) ;
 int memset (void*,int ,unsigned long) ;

void *tcc_mallocz(unsigned long size)
{
 void *ptr;
 ptr = malloc (size);
 memset (ptr, 0, size);
 return ptr;
}
