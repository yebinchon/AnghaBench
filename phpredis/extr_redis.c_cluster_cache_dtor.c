
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ptr; } ;
typedef TYPE_1__ zend_resource ;


 int cluster_cache_free (scalar_t__) ;

__attribute__((used)) static void cluster_cache_dtor(zend_resource *rsrc) {
    if (rsrc->ptr) {
        cluster_cache_free(rsrc->ptr);
    }
}
