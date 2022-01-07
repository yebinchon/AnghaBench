
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int provctx; int (* teardown ) (int ) ;} ;
typedef TYPE_1__ OSSL_PROVIDER ;


 int stub1 (int ) ;

void ossl_provider_teardown(const OSSL_PROVIDER *prov)
{
    if (prov->teardown != ((void*)0))
        prov->teardown(prov->provctx);
}
