
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pem_password_cb ;
typedef int EVP_PKEY ;
typedef int BIO ;


 int BIO_read (int *,unsigned char*,int) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_clear_free (unsigned char*,int) ;
 unsigned char* OPENSSL_malloc (int) ;
 int PEM_F_B2I_PVK_BIO ;
 int PEM_R_PVK_DATA_TOO_SHORT ;
 int PEMerr (int ,int ) ;
 int * do_PVK_body (unsigned char const**,unsigned int,unsigned int,int *,void*) ;
 int do_PVK_header (unsigned char const**,int,int ,unsigned int*,unsigned int*) ;

EVP_PKEY *b2i_PVK_bio(BIO *in, pem_password_cb *cb, void *u)
{
    unsigned char pvk_hdr[24], *buf = ((void*)0);
    const unsigned char *p;
    int buflen;
    EVP_PKEY *ret = ((void*)0);
    unsigned int saltlen, keylen;
    if (BIO_read(in, pvk_hdr, 24) != 24) {
        PEMerr(PEM_F_B2I_PVK_BIO, PEM_R_PVK_DATA_TOO_SHORT);
        return ((void*)0);
    }
    p = pvk_hdr;

    if (!do_PVK_header(&p, 24, 0, &saltlen, &keylen))
        return 0;
    buflen = (int)keylen + saltlen;
    buf = OPENSSL_malloc(buflen);
    if (buf == ((void*)0)) {
        PEMerr(PEM_F_B2I_PVK_BIO, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    p = buf;
    if (BIO_read(in, buf, buflen) != buflen) {
        PEMerr(PEM_F_B2I_PVK_BIO, PEM_R_PVK_DATA_TOO_SHORT);
        goto err;
    }
    ret = do_PVK_body(&p, saltlen, keylen, cb, u);

 err:
    OPENSSL_clear_free(buf, buflen);
    return ret;
}
