
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* engine; } ;
typedef TYPE_1__ OSSL_STORE_LOADER ;
typedef int ENGINE ;



const ENGINE *OSSL_STORE_LOADER_get0_engine(const OSSL_STORE_LOADER *loader)
{
    return loader->engine;
}
