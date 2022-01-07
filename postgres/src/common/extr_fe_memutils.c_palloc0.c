
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;


 int MCXT_ALLOC_ZERO ;
 void* pg_malloc_internal (int ,int ) ;

void *
palloc0(Size size)
{
 return pg_malloc_internal(size, MCXT_ALLOC_ZERO);
}
