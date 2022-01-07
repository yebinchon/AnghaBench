
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gc_free (void*) ;

void free(void *ptr) {
    gc_free(ptr);
}
