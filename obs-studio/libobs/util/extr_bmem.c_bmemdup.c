
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* bmalloc (size_t) ;
 int memcpy (void*,void const*,size_t) ;

void *bmemdup(const void *ptr, size_t size)
{
 void *out = bmalloc(size);
 if (size)
  memcpy(out, ptr, size);

 return out;
}
