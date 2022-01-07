
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (void const*,void const*,size_t) ;

int
dshash_memcmp(const void *a, const void *b, size_t size, void *arg)
{
 return memcmp(a, b, size);
}
