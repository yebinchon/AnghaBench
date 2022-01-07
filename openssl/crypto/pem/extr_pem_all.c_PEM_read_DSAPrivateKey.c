
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pem_password_cb ;
typedef int FILE ;
typedef int EVP_PKEY ;
typedef int DSA ;


 int * PEM_read_PrivateKey (int *,int *,int *,void*) ;
 int * pkey_get_dsa (int *,int **) ;

DSA *PEM_read_DSAPrivateKey(FILE *fp, DSA **dsa, pem_password_cb *cb, void *u)
{
    EVP_PKEY *pktmp;
    pktmp = PEM_read_PrivateKey(fp, ((void*)0), cb, u);
    return pkey_get_dsa(pktmp, dsa);
}
