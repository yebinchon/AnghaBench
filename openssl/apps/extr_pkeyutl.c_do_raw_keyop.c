
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;
typedef int BIO ;


 int BIO_printf (int ,char*) ;
 int BIO_read (int *,unsigned char*,int) ;
 int EVP_DigestSign (int *,unsigned char*,size_t*,unsigned char*,int) ;
 int EVP_DigestSignFinal (int *,unsigned char*,size_t*) ;
 int EVP_DigestSignInit (int *,int *,int const*,int *,int *) ;
 int EVP_DigestSignUpdate (int *,unsigned char*,size_t) ;
 int EVP_DigestVerify (int *,unsigned char*,size_t,unsigned char*,int) ;
 int EVP_DigestVerifyFinal (int *,unsigned char*,size_t) ;
 int EVP_DigestVerifyInit (int *,int *,int const*,int *,int *) ;
 int EVP_DigestVerifyUpdate (int *,unsigned char*,size_t) ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int EVP_MD_CTX_set_pkey_ctx (int *,int *) ;
 scalar_t__ EVP_PKEY_ED25519 ;
 scalar_t__ EVP_PKEY_ED448 ;


 scalar_t__ EVP_PKEY_id (int *) ;
 int OPENSSL_free (unsigned char*) ;
 int TBUF_MAXSIZE ;
 unsigned char* app_malloc (size_t,char*) ;
 int bio_err ;

__attribute__((used)) static int do_raw_keyop(int pkey_op, EVP_PKEY_CTX *ctx,
                        const EVP_MD *md, EVP_PKEY *pkey, BIO *in,
                        int filesize, unsigned char *sig, int siglen,
                        unsigned char **out, size_t *poutlen)
{
    int rv = 0;
    EVP_MD_CTX *mctx = ((void*)0);
    unsigned char tbuf[TBUF_MAXSIZE];
    unsigned char *mbuf = ((void*)0);
    int buf_len = 0;

    if ((mctx = EVP_MD_CTX_new()) == ((void*)0)) {
        BIO_printf(bio_err, "Error: out of memory\n");
        return rv;
    }
    EVP_MD_CTX_set_pkey_ctx(mctx, ctx);


    if (EVP_PKEY_id(pkey) == EVP_PKEY_ED25519
            || EVP_PKEY_id(pkey) == EVP_PKEY_ED448) {
        if (filesize < 0) {
            BIO_printf(bio_err,
                       "Error: unable to determine file size for oneshot operation\n");
            goto end;
        }
        mbuf = app_malloc(filesize, "oneshot sign/verify buffer");
        switch(pkey_op) {
        case 128:
            if (EVP_DigestVerifyInit(mctx, ((void*)0), md, ((void*)0), pkey) != 1)
                goto end;
            buf_len = BIO_read(in, mbuf, filesize);
            if (buf_len != filesize) {
                BIO_printf(bio_err, "Error reading raw input data\n");
                goto end;
            }
            rv = EVP_DigestVerify(mctx, sig, (size_t)siglen, mbuf, buf_len);
            break;
        case 129:
            if (EVP_DigestSignInit(mctx, ((void*)0), md, ((void*)0), pkey) != 1)
                goto end;
            buf_len = BIO_read(in, mbuf, filesize);
            if (buf_len != filesize) {
                BIO_printf(bio_err, "Error reading raw input data\n");
                goto end;
            }
            rv = EVP_DigestSign(mctx, ((void*)0), poutlen, mbuf, buf_len);
            if (rv == 1 && out != ((void*)0)) {
                *out = app_malloc(*poutlen, "buffer output");
                rv = EVP_DigestSign(mctx, *out, poutlen, mbuf, buf_len);
            }
            break;
        }
        goto end;
    }

    switch(pkey_op) {
    case 128:
        if (EVP_DigestVerifyInit(mctx, ((void*)0), md, ((void*)0), pkey) != 1)
            goto end;
        for (;;) {
            buf_len = BIO_read(in, tbuf, TBUF_MAXSIZE);
            if (buf_len == 0)
                break;
            if (buf_len < 0) {
                BIO_printf(bio_err, "Error reading raw input data\n");
                goto end;
            }
            rv = EVP_DigestVerifyUpdate(mctx, tbuf, (size_t)buf_len);
            if (rv != 1) {
                BIO_printf(bio_err, "Error verifying raw input data\n");
                goto end;
            }
        }
        rv = EVP_DigestVerifyFinal(mctx, sig, (size_t)siglen);
        break;
    case 129:
        if (EVP_DigestSignInit(mctx, ((void*)0), md, ((void*)0), pkey) != 1)
            goto end;
        for (;;) {
            buf_len = BIO_read(in, tbuf, TBUF_MAXSIZE);
            if (buf_len == 0)
                break;
            if (buf_len < 0) {
                BIO_printf(bio_err, "Error reading raw input data\n");
                goto end;
            }
            rv = EVP_DigestSignUpdate(mctx, tbuf, (size_t)buf_len);
            if (rv != 1) {
                BIO_printf(bio_err, "Error signing raw input data\n");
                goto end;
            }
        }
        rv = EVP_DigestSignFinal(mctx, ((void*)0), poutlen);
        if (rv == 1 && out != ((void*)0)) {
            *out = app_malloc(*poutlen, "buffer output");
            rv = EVP_DigestSignFinal(mctx, *out, poutlen);
        }
        break;
    }

 end:
    OPENSSL_free(mbuf);
    EVP_MD_CTX_free(mctx);
    return rv;
}
