
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* provctx; } ;
typedef TYPE_1__ OSSL_PROVIDER ;



void *ossl_provider_ctx(const OSSL_PROVIDER *prov)
{
    return prov->provctx;
}
