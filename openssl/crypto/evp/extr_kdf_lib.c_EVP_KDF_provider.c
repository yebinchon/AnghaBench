
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* prov; } ;
typedef int OSSL_PROVIDER ;
typedef TYPE_1__ EVP_KDF ;



const OSSL_PROVIDER *EVP_KDF_provider(const EVP_KDF *kdf)
{
    return kdf->prov;
}
