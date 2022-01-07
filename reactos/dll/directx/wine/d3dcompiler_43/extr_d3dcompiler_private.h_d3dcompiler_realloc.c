
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SIZE_T ;


 int GetProcessHeap () ;
 void* HeapReAlloc (int ,int ,void*,int ) ;

__attribute__((used)) static inline void *d3dcompiler_realloc(void *ptr, SIZE_T size)
{
    return HeapReAlloc(GetProcessHeap(), 0, ptr, size);
}
