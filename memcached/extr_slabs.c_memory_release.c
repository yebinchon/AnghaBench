
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ slab_page_size; int slab_reassign; } ;


 int free (void*) ;
 void* get_page_from_global_pool () ;
 int * mem_base ;
 scalar_t__ mem_limit ;
 scalar_t__ mem_malloced ;
 TYPE_1__ settings ;

__attribute__((used)) static void memory_release() {
    void *p = ((void*)0);
    if (mem_base != ((void*)0))
        return;

    if (!settings.slab_reassign)
        return;

    while (mem_malloced > mem_limit &&
            (p = get_page_from_global_pool()) != ((void*)0)) {
        free(p);
        mem_malloced -= settings.slab_page_size;
    }
}
