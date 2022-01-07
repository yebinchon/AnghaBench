
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* calloc (size_t,size_t) ;

__attribute__((used)) static void *__mbfl__calloc(size_t nelems, size_t szelem)
{
 return calloc(nelems, szelem);
}
