
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pem_password_cb ;
typedef int RSA ;
typedef int FILE ;
typedef int EVP_PKEY ;


 int * PEM_read_PrivateKey (int *,int *,int *,void*) ;
 int * pkey_get_rsa (int *,int **) ;

RSA *PEM_read_RSAPrivateKey(FILE *fp, RSA **rsa, pem_password_cb *cb, void *u)
{
    EVP_PKEY *pktmp;
    pktmp = PEM_read_PrivateKey(fp, ((void*)0), cb, u);
    return pkey_get_rsa(pktmp, rsa);
}
