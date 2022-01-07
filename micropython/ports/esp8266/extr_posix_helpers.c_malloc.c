
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int errno ;
 void* gc_alloc (size_t,int) ;

void *malloc(size_t size) {
    void *p = gc_alloc(size, 0);
    if (p == ((void*)0)) {

        errno = ENOMEM;
    }
    return p;
}
