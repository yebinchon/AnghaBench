
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MCXT_ALLOC_ZERO ;
 void* pg_malloc_internal (size_t,int ) ;

void *
pg_malloc0(size_t size)
{
 return pg_malloc_internal(size, MCXT_ALLOC_ZERO);
}
