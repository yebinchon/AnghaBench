
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fatal (char*,size_t) ;
 void* malloc (size_t) ;
 scalar_t__ unlikely (int) ;

void *mallocz(size_t size) {
    void *p = malloc(size);
    if (unlikely(!p)) fatal("Cannot allocate %zu bytes of memory.", size);
    return p;
}
