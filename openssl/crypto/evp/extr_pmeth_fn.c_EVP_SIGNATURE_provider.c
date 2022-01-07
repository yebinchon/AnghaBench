
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * prov; } ;
typedef int OSSL_PROVIDER ;
typedef TYPE_1__ EVP_SIGNATURE ;



OSSL_PROVIDER *EVP_SIGNATURE_provider(const EVP_SIGNATURE *signature)
{
    return signature->prov;
}
