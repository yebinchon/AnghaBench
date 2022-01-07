
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int algs; } ;
typedef TYPE_1__ OSSL_METHOD_STORE ;
typedef int ALGORITHM ;


 int * ossl_sa_ALGORITHM_get (int ,int) ;

__attribute__((used)) static ALGORITHM *ossl_method_store_retrieve(OSSL_METHOD_STORE *store, int nid)
{
    return ossl_sa_ALGORITHM_get(store->algs, nid);
}
