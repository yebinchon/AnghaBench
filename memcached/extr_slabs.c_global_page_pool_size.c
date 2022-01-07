
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int slabs; } ;


 size_t SLAB_GLOBAL_PAGE_POOL ;
 scalar_t__ mem_limit ;
 scalar_t__ mem_malloced ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_1__* slabclass ;
 int slabs_lock ;

unsigned int global_page_pool_size(bool *mem_flag) {
    unsigned int ret = 0;
    pthread_mutex_lock(&slabs_lock);
    if (mem_flag != ((void*)0))
        *mem_flag = mem_malloced >= mem_limit ? 1 : 0;
    ret = slabclass[SLAB_GLOBAL_PAGE_POOL].slabs;
    pthread_mutex_unlock(&slabs_lock);
    return ret;
}
