
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int errno ;
 void* gc_realloc (void*,size_t,int) ;

void *realloc(void *ptr, size_t size) {
    void *p = gc_realloc(ptr, size, 1);
    if (p == ((void*)0)) {

        errno = ENOMEM;
    }
    return p;
}
