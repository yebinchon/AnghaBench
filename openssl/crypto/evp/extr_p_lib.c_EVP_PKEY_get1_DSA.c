
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;
typedef int DSA ;


 int DSA_up_ref (int *) ;
 int * EVP_PKEY_get0_DSA (int *) ;

DSA *EVP_PKEY_get1_DSA(EVP_PKEY *pkey)
{
    DSA *ret = EVP_PKEY_get0_DSA(pkey);
    if (ret != ((void*)0))
        DSA_up_ref(ret);
    return ret;
}
