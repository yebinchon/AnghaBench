
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int fprintf (int ,char*) ;
 void* realloc (void*,size_t) ;
 int stderr ;

void *
REALLOC(void *p, size_t size)
{
    p = realloc(p, size);

    if (p == ((void*)0)) {
        fprintf(stderr, "[-] out of memory, aborting\n");
        abort();
    }

    return p;
}
