
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;
typedef int EVP_MAC_CTX ;
typedef int EVP_MAC ;


 int EVP_MAC_CTX_free (int *) ;
 int * EVP_MAC_CTX_mac (int *) ;
 int EVP_MAC_free (int *) ;
 int * EVP_PKEY_get0 (int *) ;

__attribute__((used)) static void cmac_key_free(EVP_PKEY *pkey)
{
    EVP_MAC_CTX *cmctx = EVP_PKEY_get0(pkey);
    EVP_MAC *mac = cmctx == ((void*)0) ? ((void*)0) : EVP_MAC_CTX_mac(cmctx);

    EVP_MAC_CTX_free(cmctx);
    EVP_MAC_free(mac);
}
