
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pem_password_cb ;
typedef int EVP_PKEY ;
typedef int EVP_CIPHER ;
typedef int BIO ;


 int do_pk8pkey (int *,int const*,int ,int,int const*,char*,int,int *,void*) ;

int PEM_write_bio_PKCS8PrivateKey(BIO *bp, const EVP_PKEY *x, const EVP_CIPHER *enc,
                                  char *kstr, int klen,
                                  pem_password_cb *cb, void *u)
{
    return do_pk8pkey(bp, x, 0, -1, enc, kstr, klen, cb, u);
}
