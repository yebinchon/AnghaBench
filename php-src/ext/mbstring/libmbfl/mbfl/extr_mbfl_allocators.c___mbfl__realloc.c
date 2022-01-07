
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* realloc (void*,size_t) ;

__attribute__((used)) static void *__mbfl__realloc(void *ptr, size_t sz)
{
 return realloc(ptr, sz);
}
