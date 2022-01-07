
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OUT_OF_MEMORY ;
 void* malloc (size_t) ;
 int mmfatal (int ,char*) ;

void *
mm_alloc(size_t size)
{
 void *ptr = malloc(size);

 if (ptr == ((void*)0))
  mmfatal(OUT_OF_MEMORY, "out of memory");

 return ptr;
}
