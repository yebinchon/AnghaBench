
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;


 void* pg_malloc_internal (int ,int) ;

void *
palloc_extended(Size size, int flags)
{
 return pg_malloc_internal(size, flags);
}
