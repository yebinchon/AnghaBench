
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (size_t) ;
 int memset (void*,int ,size_t) ;

__attribute__((used)) static inline void *
swlib_alloc(size_t size)
{
 void *ptr;

 ptr = malloc(size);
 if (!ptr)
  goto done;
 memset(ptr, 0, size);

done:
 return ptr;
}
