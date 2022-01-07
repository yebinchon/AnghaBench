
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* (* gettable_ctx_params ) () ;} ;
typedef int OSSL_PARAM ;
typedef TYPE_1__ EVP_KDF ;


 int const* stub1 () ;

const OSSL_PARAM *EVP_KDF_gettable_ctx_params(const EVP_KDF *kdf)
{
    if (kdf->gettable_ctx_params == ((void*)0))
        return ((void*)0);
    return kdf->gettable_ctx_params();
}
