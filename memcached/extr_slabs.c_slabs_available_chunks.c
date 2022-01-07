
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int sl_curr; unsigned int perslab; } ;
typedef TYPE_1__ slabclass_t ;


 scalar_t__ mem_limit ;
 scalar_t__ mem_malloced ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_1__* slabclass ;
 int slabs_lock ;

unsigned int slabs_available_chunks(const unsigned int id, bool *mem_flag,
        unsigned int *chunks_perslab) {
    unsigned int ret;
    slabclass_t *p;

    pthread_mutex_lock(&slabs_lock);
    p = &slabclass[id];
    ret = p->sl_curr;
    if (mem_flag != ((void*)0))
        *mem_flag = mem_malloced >= mem_limit ? 1 : 0;
    if (chunks_perslab != ((void*)0))
        *chunks_perslab = p->perslab;
    pthread_mutex_unlock(&slabs_lock);
    return ret;
}
