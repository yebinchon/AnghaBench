
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HEAP_ZERO_MEMORY ;
 void* malloc (size_t) ;
 int memset (void*,int ,size_t) ;

void* __HeapAlloc(int heap, int flags, size_t size)
{
    void * ret = malloc(size);
    if(flags & HEAP_ZERO_MEMORY)
        memset(ret, 0, size);
    return ret;
}
