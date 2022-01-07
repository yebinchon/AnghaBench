
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parameter; int algorithm; } ;
typedef TYPE_1__ X509_ALGOR ;
typedef int EVP_CIPHER_CTX ;


 int ERR_R_EVP_LIB ;
 int ERR_R_MALLOC_FAILURE ;
 scalar_t__ EVP_CIPHER_CTX_block_size (int *) ;
 int EVP_CIPHER_CTX_free (int *) ;
 int * EVP_CIPHER_CTX_new () ;
 int EVP_CipherFinal_ex (int *,unsigned char*,int*) ;
 int EVP_CipherUpdate (int *,unsigned char*,int*,unsigned char const*,int) ;
 int EVP_PBE_CipherInit (int ,char const*,int,int ,int *,int) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (scalar_t__) ;
 int PKCS12_F_PKCS12_PBE_CRYPT ;
 int PKCS12_R_PKCS12_ALGOR_CIPHERINIT_ERROR ;
 int PKCS12_R_PKCS12_CIPHERFINAL_ERROR ;
 int PKCS12err (int ,int ) ;

unsigned char *PKCS12_pbe_crypt(const X509_ALGOR *algor,
                                const char *pass, int passlen,
                                const unsigned char *in, int inlen,
                                unsigned char **data, int *datalen, int en_de)
{
    unsigned char *out = ((void*)0);
    int outlen, i;
    EVP_CIPHER_CTX *ctx = EVP_CIPHER_CTX_new();

    if (ctx == ((void*)0)) {
        PKCS12err(PKCS12_F_PKCS12_PBE_CRYPT, ERR_R_MALLOC_FAILURE);
        goto err;
    }


    if (!EVP_PBE_CipherInit(algor->algorithm, pass, passlen,
                            algor->parameter, ctx, en_de)) {
        PKCS12err(PKCS12_F_PKCS12_PBE_CRYPT,
                  PKCS12_R_PKCS12_ALGOR_CIPHERINIT_ERROR);
        goto err;
    }

    if ((out = OPENSSL_malloc(inlen + EVP_CIPHER_CTX_block_size(ctx)))
            == ((void*)0)) {
        PKCS12err(PKCS12_F_PKCS12_PBE_CRYPT, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (!EVP_CipherUpdate(ctx, out, &i, in, inlen)) {
        OPENSSL_free(out);
        out = ((void*)0);
        PKCS12err(PKCS12_F_PKCS12_PBE_CRYPT, ERR_R_EVP_LIB);
        goto err;
    }

    outlen = i;
    if (!EVP_CipherFinal_ex(ctx, out + i, &i)) {
        OPENSSL_free(out);
        out = ((void*)0);
        PKCS12err(PKCS12_F_PKCS12_PBE_CRYPT,
                  PKCS12_R_PKCS12_CIPHERFINAL_ERROR);
        goto err;
    }
    outlen += i;
    if (datalen)
        *datalen = outlen;
    if (data)
        *data = out;
 err:
    EVP_CIPHER_CTX_free(ctx);
    return out;

}
