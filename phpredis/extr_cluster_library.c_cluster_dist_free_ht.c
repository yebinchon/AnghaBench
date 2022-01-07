
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {int len; struct TYPE_3__* entry; struct TYPE_3__* val; scalar_t__ val_free; struct TYPE_3__* key; scalar_t__ key_free; } ;
typedef TYPE_1__ clusterDistList ;


 int efree (TYPE_1__*) ;

__attribute__((used)) static void cluster_dist_free_ht(zval *p) {
    clusterDistList *dl = *(clusterDistList**)p;
    int i;

    for (i = 0; i < dl->len; i++) {
        if (dl->entry[i].key_free)
            efree(dl->entry[i].key);
        if (dl->entry[i].val_free)
            efree(dl->entry[i].val);
    }

    efree(dl->entry);
    efree(dl);
}
