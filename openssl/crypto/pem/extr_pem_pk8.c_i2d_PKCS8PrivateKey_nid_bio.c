
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pem_password_cb ;
typedef int EVP_PKEY ;
typedef int BIO ;


 int do_pk8pkey (int *,int const*,int,int,int *,char*,int,int *,void*) ;

int i2d_PKCS8PrivateKey_nid_bio(BIO *bp, const EVP_PKEY *x, int nid,
                                char *kstr, int klen,
                                pem_password_cb *cb, void *u)
{
    return do_pk8pkey(bp, x, 1, nid, ((void*)0), kstr, klen, cb, u);
}
