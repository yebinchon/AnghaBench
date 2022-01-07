
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int block128_f ;
struct TYPE_5__ {int ks; } ;
struct TYPE_7__ {TYPE_1__ ks; int wrapfn; } ;
struct TYPE_6__ {int enc; size_t keylen; scalar_t__ pad; int block; } ;
typedef TYPE_2__ PROV_CIPHER_CTX ;
typedef TYPE_3__ PROV_AES_WRAP_CTX ;


 scalar_t__ AES_decrypt ;
 scalar_t__ AES_encrypt ;
 int AES_set_decrypt_key (unsigned char const*,size_t,int *) ;
 int AES_set_encrypt_key (unsigned char const*,size_t,int *) ;
 int CRYPTO_128_unwrap ;
 int CRYPTO_128_unwrap_pad ;
 int CRYPTO_128_wrap ;
 int CRYPTO_128_wrap_pad ;
 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int PROV_R_INVALID_KEY_LENGTH ;
 int cipher_generic_initiv (TYPE_2__*,unsigned char const*,size_t) ;

__attribute__((used)) static int aes_wrap_init(void *vctx, const unsigned char *key,
                         size_t keylen, const unsigned char *iv,
                         size_t ivlen, int enc)
{
    PROV_CIPHER_CTX *ctx = (PROV_CIPHER_CTX *)vctx;
    PROV_AES_WRAP_CTX *wctx = (PROV_AES_WRAP_CTX *)vctx;

    ctx->enc = enc;
    ctx->block = enc ? (block128_f)AES_encrypt : (block128_f)AES_decrypt;
    if (ctx->pad)
        wctx->wrapfn = enc ? CRYPTO_128_wrap_pad : CRYPTO_128_unwrap_pad;
    else
        wctx->wrapfn = enc ? CRYPTO_128_wrap : CRYPTO_128_unwrap;

    if (iv != ((void*)0)) {
        if (!cipher_generic_initiv(ctx, iv, ivlen))
            return 0;
    }
    if (key != ((void*)0)) {
        if (keylen != ctx->keylen) {
           ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_KEY_LENGTH);
           return 0;
        }
        if (ctx->enc)
            AES_set_encrypt_key(key, keylen * 8, &wctx->ks.ks);
        else
            AES_set_decrypt_key(key, keylen * 8, &wctx->ks.ks);
    }
    return 1;
}
