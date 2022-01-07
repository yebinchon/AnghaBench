
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* get_params ) (int *) ;} ;
typedef int OSSL_PARAM ;
typedef TYPE_1__ EVP_CIPHER ;


 int stub1 (int *) ;

int EVP_CIPHER_get_params(EVP_CIPHER *cipher, OSSL_PARAM params[])
{
    if (cipher != ((void*)0) && cipher->get_params != ((void*)0))
        return cipher->get_params(params);
    return 0;
}
