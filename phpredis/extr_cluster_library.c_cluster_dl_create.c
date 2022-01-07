
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int clusterKeyVal ;
struct TYPE_3__ {int size; scalar_t__ len; void* entry; } ;
typedef TYPE_1__ clusterDistList ;


 int CLUSTER_KEYDIST_ALLOC ;
 void* emalloc (int) ;

__attribute__((used)) static clusterDistList *cluster_dl_create() {
    clusterDistList *dl;

    dl = emalloc(sizeof(clusterDistList));
    dl->entry = emalloc(CLUSTER_KEYDIST_ALLOC * sizeof(clusterKeyVal));
    dl->size = CLUSTER_KEYDIST_ALLOC;
    dl->len = 0;

    return dl;
}
