
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* realloc (void*,size_t) ;

void *
xrealloc(void * in, size_t size)
{
  if (size < 1)
  {
    size = 1;
  }
  return realloc(in, size);
}
