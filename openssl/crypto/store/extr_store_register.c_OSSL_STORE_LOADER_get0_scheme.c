
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* scheme; } ;
typedef TYPE_1__ OSSL_STORE_LOADER ;



const char *OSSL_STORE_LOADER_get0_scheme(const OSSL_STORE_LOADER *loader)
{
    return loader->scheme;
}
