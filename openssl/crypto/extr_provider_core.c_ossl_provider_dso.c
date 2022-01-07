
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* module; } ;
typedef TYPE_1__ OSSL_PROVIDER ;
typedef int DSO ;



const DSO *ossl_provider_dso(const OSSL_PROVIDER *prov)
{
    return prov->module;
}
