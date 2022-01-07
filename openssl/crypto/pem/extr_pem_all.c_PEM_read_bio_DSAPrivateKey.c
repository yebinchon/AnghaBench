
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pem_password_cb ;
typedef int EVP_PKEY ;
typedef int DSA ;
typedef int BIO ;


 int * PEM_read_bio_PrivateKey (int *,int *,int *,void*) ;
 int * pkey_get_dsa (int *,int **) ;

DSA *PEM_read_bio_DSAPrivateKey(BIO *bp, DSA **dsa, pem_password_cb *cb,
                                void *u)
{
    EVP_PKEY *pktmp;
    pktmp = PEM_read_bio_PrivateKey(bp, ((void*)0), cb, u);
    return pkey_get_dsa(pktmp, dsa);
}
