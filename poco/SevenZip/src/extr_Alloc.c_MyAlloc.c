
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,size_t,int ,unsigned int) ;
 int g_allocCount ;
 void* malloc (size_t) ;
 int stderr ;

void *MyAlloc(size_t size)
{
  if (size == 0)
    return 0;







  return malloc(size);

}
