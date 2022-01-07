
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR (char*) ;
 int exit (int) ;
 void* heap_realloc (void*,size_t) ;

void *heap_xrealloc(void *buf, size_t size)
{
    void *new_buf = heap_realloc(buf, size);

    if (!new_buf)
    {
        ERR("Out of memory!\n");
        exit(1);
    }

    return new_buf;
}
