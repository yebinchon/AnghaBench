
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int provctx; int const* (* query_operation ) (int ,int,int*) ;} ;
typedef TYPE_1__ OSSL_PROVIDER ;
typedef int OSSL_ALGORITHM ;


 int const* stub1 (int ,int,int*) ;

const OSSL_ALGORITHM *ossl_provider_query_operation(const OSSL_PROVIDER *prov,
                                                    int operation_id,
                                                    int *no_cache)
{
    return prov->query_operation(prov->provctx, operation_id, no_cache);
}
