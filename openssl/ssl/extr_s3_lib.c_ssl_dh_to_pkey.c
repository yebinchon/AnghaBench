
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;
typedef int DH ;


 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_new () ;
 scalar_t__ EVP_PKEY_set1_DH (int *,int *) ;

EVP_PKEY *ssl_dh_to_pkey(DH *dh)
{
    EVP_PKEY *ret;
    if (dh == ((void*)0))
        return ((void*)0);
    ret = EVP_PKEY_new();
    if (EVP_PKEY_set1_DH(ret, dh) <= 0) {
        EVP_PKEY_free(ret);
        return ((void*)0);
    }
    return ret;
}
