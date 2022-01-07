
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* get_params ) (int *) ;} ;
typedef int OSSL_PARAM ;
typedef TYPE_1__ EVP_MD ;


 int stub1 (int *) ;

int EVP_MD_get_params(const EVP_MD *digest, OSSL_PARAM params[])
{
    if (digest != ((void*)0) && digest->get_params != ((void*)0))
        return digest->get_params(params);
    return 0;
}
