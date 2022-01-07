
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* get_params ) (int ,int *) ;int provctx; } ;
typedef TYPE_1__ OSSL_PROVIDER ;
typedef int OSSL_PARAM ;


 int stub1 (int ,int *) ;

int ossl_provider_get_params(const OSSL_PROVIDER *prov, OSSL_PARAM params[])
{
    return prov->get_params == ((void*)0)
        ? 0 : prov->get_params(prov->provctx, params);
}
