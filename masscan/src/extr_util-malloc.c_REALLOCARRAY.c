
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t MAXNUM ;
 size_t SIZE_MAX ;
 int abort () ;
 int fprintf (int ,char*) ;
 void* realloc (void*,size_t) ;
 int stderr ;

void *
REALLOCARRAY(void *p, size_t count, size_t size)
{
    if (count >= MAXNUM || size >= MAXNUM) {
        if (size != 0 && count >= SIZE_MAX/size) {
            fprintf(stderr, "[-] alloc too large, aborting\n");
            abort();
        }
    }

    p = realloc(p, count * size);
    if (p == ((void*)0) && count * size != 0) {
        fprintf(stderr, "[-] out of memory, aborting\n");
        abort();
    }

    return p;
}
