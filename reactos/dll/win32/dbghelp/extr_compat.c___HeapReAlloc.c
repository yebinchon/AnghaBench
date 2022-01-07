
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SIZE_T ;
typedef int DWORD ;


 void* realloc (void*,int ) ;

void* __HeapReAlloc(int heap, DWORD d2, void *slab, SIZE_T newsize)
{
    return realloc(slab, newsize);
}
