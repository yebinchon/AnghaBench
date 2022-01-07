
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* bmalloc (size_t) ;
 int memset (void*,int ,size_t) ;

__attribute__((used)) static inline void *bzalloc(size_t size)
{
 void *mem = bmalloc(size);
 if (mem)
  memset(mem, 0, size);
 return mem;
}
