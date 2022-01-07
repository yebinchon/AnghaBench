
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (int) ;

void *
xmalloc(int size)
{
  if (size < 1)
  {
    size = 1;
  }
  return malloc(size);
}
