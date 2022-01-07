
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR (char*) ;
 int exit (int) ;
 void* heap_alloc (size_t) ;

void *heap_xalloc(size_t size)
{
    void *buf = heap_alloc(size);
    if (!buf)
    {
        ERR("Out of memory!\n");
        exit(1);
    }
    return buf;
}
