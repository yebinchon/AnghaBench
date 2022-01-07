
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int avl ;
struct TYPE_8__ {int rrdset_root_index_name; } ;
struct TYPE_7__ {int avlname; } ;
typedef TYPE_1__ RRDSET ;
typedef TYPE_2__ RRDHOST ;


 void* avl_insert_lock (int *,int *) ;
 TYPE_1__* rrdset_from_avlname (void*) ;

RRDSET *rrdset_index_add_name(RRDHOST *host, RRDSET *st) {
    void *result;

    result = avl_insert_lock(&host->rrdset_root_index_name, (avl *) (&st->avlname));
    if(result) return rrdset_from_avlname(result);
    return ((void*)0);
}
