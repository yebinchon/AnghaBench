
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; int slabs; int sl_curr; int perslab; } ;
typedef TYPE_1__ slabclass_t ;
struct TYPE_6__ {int chunk_size; int total_pages; int free_chunks; int chunks_per_page; } ;
typedef TYPE_2__ slab_stats_automove ;


 int MAX_NUMBER_OF_SLAB_CLASSES ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_1__* slabclass ;
 int slabs_lock ;

void fill_slab_stats_automove(slab_stats_automove *am) {
    int n;
    pthread_mutex_lock(&slabs_lock);
    for (n = 0; n < MAX_NUMBER_OF_SLAB_CLASSES; n++) {
        slabclass_t *p = &slabclass[n];
        slab_stats_automove *cur = &am[n];
        cur->chunks_per_page = p->perslab;
        cur->free_chunks = p->sl_curr;
        cur->total_pages = p->slabs;
        cur->chunk_size = p->size;
    }
    pthread_mutex_unlock(&slabs_lock);
}
