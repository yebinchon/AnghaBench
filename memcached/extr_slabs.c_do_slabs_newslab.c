
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; int perslab; scalar_t__ slabs; char** slab_list; } ;
typedef TYPE_1__ slabclass_t ;
struct TYPE_5__ {int slab_chunk_size_max; int slab_page_size; scalar_t__ slab_reassign; } ;


 int MEMCACHED_SLABS_SLABCLASS_ALLOCATE (unsigned int const) ;
 int MEMCACHED_SLABS_SLABCLASS_ALLOCATE_FAILED (unsigned int const) ;
 size_t SLAB_GLOBAL_PAGE_POOL ;
 char* get_page_from_global_pool () ;
 scalar_t__ grow_slab_list (unsigned int const) ;
 scalar_t__ mem_limit ;
 int mem_limit_reached ;
 scalar_t__ mem_malloced ;
 char* memory_allocate (size_t) ;
 int memset (char*,int ,size_t) ;
 TYPE_3__ settings ;
 TYPE_1__* slabclass ;
 int split_slab_page_into_freelist (char*,unsigned int const) ;

__attribute__((used)) static int do_slabs_newslab(const unsigned int id) {
    slabclass_t *p = &slabclass[id];
    slabclass_t *g = &slabclass[SLAB_GLOBAL_PAGE_POOL];
    int len = (settings.slab_reassign || settings.slab_chunk_size_max != settings.slab_page_size)
        ? settings.slab_page_size
        : p->size * p->perslab;
    char *ptr;

    if ((mem_limit && mem_malloced + len > mem_limit && p->slabs > 0
         && g->slabs == 0)) {
        mem_limit_reached = 1;
        MEMCACHED_SLABS_SLABCLASS_ALLOCATE_FAILED(id);
        return 0;
    }

    if ((grow_slab_list(id) == 0) ||
        (((ptr = get_page_from_global_pool()) == ((void*)0)) &&
        ((ptr = memory_allocate((size_t)len)) == 0))) {

        MEMCACHED_SLABS_SLABCLASS_ALLOCATE_FAILED(id);
        return 0;
    }

    memset(ptr, 0, (size_t)len);
    split_slab_page_into_freelist(ptr, id);

    p->slab_list[p->slabs++] = ptr;
    MEMCACHED_SLABS_SLABCLASS_ALLOCATE(id);

    return 1;
}
