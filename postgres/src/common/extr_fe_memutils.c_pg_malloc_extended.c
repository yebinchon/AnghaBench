
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* pg_malloc_internal (size_t,int) ;

void *
pg_malloc_extended(size_t size, int flags)
{
 return pg_malloc_internal(size, flags);
}
