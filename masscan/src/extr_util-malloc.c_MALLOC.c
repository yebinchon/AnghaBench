
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int fprintf (int ,char*) ;
 void* malloc (size_t) ;
 int stderr ;

void *
MALLOC(size_t size)
{
    void *p;





    if (size == 0)
        size = 1;


    p = malloc(size);


    if (p == ((void*)0)) {
        fprintf(stderr, "[-] out of memory, aborting\n");
        abort();
    }



    return p;
}
