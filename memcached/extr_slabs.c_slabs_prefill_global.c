
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int slabs; void** slab_list; } ;
typedef TYPE_1__ slabclass_t ;
struct TYPE_5__ {int slab_page_size; } ;


 int grow_slab_list (int ) ;
 scalar_t__ mem_limit ;
 int mem_limit_reached ;
 scalar_t__ mem_malloced ;
 void* memory_allocate (int) ;
 TYPE_3__ settings ;
 TYPE_1__* slabclass ;

void slabs_prefill_global(void) {
    void *ptr;
    slabclass_t *p = &slabclass[0];
    int len = settings.slab_page_size;

    while (mem_malloced < mem_limit
            && (ptr = memory_allocate(len)) != ((void*)0)) {
        grow_slab_list(0);
        p->slab_list[p->slabs++] = ptr;
    }
    mem_limit_reached = 1;
}
