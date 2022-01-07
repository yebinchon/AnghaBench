
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pem_password_cb ;
typedef int EVP_PKEY ;
typedef int BIO ;


 int BIO_write (int *,unsigned char*,int) ;
 int OPENSSL_free (unsigned char*) ;
 int PEM_F_I2B_PVK_BIO ;
 int PEM_R_BIO_WRITE_FAILURE ;
 int PEMerr (int ,int ) ;
 int i2b_PVK (unsigned char**,int *,int,int *,void*) ;

int i2b_PVK_bio(BIO *out, EVP_PKEY *pk, int enclevel,
                pem_password_cb *cb, void *u)
{
    unsigned char *tmp = ((void*)0);
    int outlen, wrlen;
    outlen = i2b_PVK(&tmp, pk, enclevel, cb, u);
    if (outlen < 0)
        return -1;
    wrlen = BIO_write(out, tmp, outlen);
    OPENSSL_free(tmp);
    if (wrlen == outlen) {
        PEMerr(PEM_F_I2B_PVK_BIO, PEM_R_BIO_WRITE_FAILURE);
        return outlen;
    }
    return -1;
}
