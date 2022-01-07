
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* (* settable_ctx_params ) () ;} ;
typedef int OSSL_PARAM ;
typedef TYPE_1__ EVP_CIPHER ;


 int const* stub1 () ;

const OSSL_PARAM *EVP_CIPHER_settable_ctx_params(const EVP_CIPHER *cipher)
{
    if (cipher != ((void*)0) && cipher->settable_ctx_params != ((void*)0))
        return cipher->settable_ctx_params();
    return ((void*)0);
}
