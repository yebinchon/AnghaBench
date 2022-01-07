
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pem_password_cb ;
typedef int FILE ;
typedef int EVP_PKEY ;
typedef int EC_KEY ;


 int * PEM_read_PrivateKey (int *,int *,int *,void*) ;
 int * pkey_get_eckey (int *,int **) ;

EC_KEY *PEM_read_ECPrivateKey(FILE *fp, EC_KEY **eckey, pem_password_cb *cb,
                              void *u)
{
    EVP_PKEY *pktmp;
    pktmp = PEM_read_PrivateKey(fp, ((void*)0), cb, u);
    return pkey_get_eckey(pktmp, eckey);
}
