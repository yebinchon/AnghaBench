
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RSA ;
typedef int EVP_PKEY ;


 int * EVP_PKEY_get0_RSA (int *) ;
 int RSA_up_ref (int *) ;

RSA *EVP_PKEY_get1_RSA(EVP_PKEY *pkey)
{
    RSA *ret = EVP_PKEY_get0_RSA(pkey);
    if (ret != ((void*)0))
        RSA_up_ref(ret);
    return ret;
}
