
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fatal (char*,size_t) ;
 void* realloc (void*,size_t) ;
 scalar_t__ unlikely (int) ;

void *reallocz(void *ptr, size_t size) {
    void *p = realloc(ptr, size);
    if (unlikely(!p)) fatal("Cannot re-allocate memory to %zu bytes.", size);
    return p;
}
