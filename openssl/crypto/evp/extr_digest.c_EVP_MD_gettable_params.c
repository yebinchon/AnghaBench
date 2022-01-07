
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* (* gettable_params ) () ;} ;
typedef int OSSL_PARAM ;
typedef TYPE_1__ EVP_MD ;


 int const* stub1 () ;

const OSSL_PARAM *EVP_MD_gettable_params(const EVP_MD *digest)
{
    if (digest != ((void*)0) && digest->gettable_params != ((void*)0))
        return digest->gettable_params();
    return ((void*)0);
}
