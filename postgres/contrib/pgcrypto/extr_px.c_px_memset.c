
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (void*,int,size_t) ;

void
px_memset(void *ptr, int c, size_t len)
{
 memset(ptr, c, len);
}
