
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int provctx; int const* (* gettable_params ) (int ) ;} ;
typedef TYPE_1__ OSSL_PROVIDER ;
typedef int OSSL_PARAM ;


 int const* stub1 (int ) ;

const OSSL_PARAM *ossl_provider_gettable_params(const OSSL_PROVIDER *prov)
{
    return prov->gettable_params == ((void*)0)
        ? ((void*)0) : prov->gettable_params(prov->provctx);
}
