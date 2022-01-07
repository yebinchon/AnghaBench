
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* ctr; void* cbc; int siv; } ;
typedef int SIV128_CONTEXT ;
typedef TYPE_1__ PROV_AES_SIV_CTX ;


 int CRYPTO_siv128_init (int *,unsigned char const*,size_t,void*,void*) ;
 void* EVP_CIPHER_fetch (int *,char*,char*) ;

__attribute__((used)) static int aes_siv_initkey(void *vctx, const unsigned char *key, size_t keylen)
{
    PROV_AES_SIV_CTX *ctx = (PROV_AES_SIV_CTX *)vctx;
    SIV128_CONTEXT *sctx = &ctx->siv;
    size_t klen = keylen / 2;

    switch (klen) {
    case 16:
        ctx->cbc = EVP_CIPHER_fetch(((void*)0), "AES-128-CBC", "");
        ctx->ctr = EVP_CIPHER_fetch(((void*)0), "AES-128-CTR", "");
        break;
    case 24:
        ctx->cbc = EVP_CIPHER_fetch(((void*)0), "AES-192-CBC", "");
        ctx->ctr = EVP_CIPHER_fetch(((void*)0), "AES-192-CTR", "");
        break;
    case 32:
        ctx->cbc = EVP_CIPHER_fetch(((void*)0), "AES-256-CBC", "");
        ctx->ctr = EVP_CIPHER_fetch(((void*)0), "AES-256-CTR", "");
        break;
    default:
        return 0;
    }




    return CRYPTO_siv128_init(sctx, key, klen, ctx->cbc, ctx->ctr);
}
