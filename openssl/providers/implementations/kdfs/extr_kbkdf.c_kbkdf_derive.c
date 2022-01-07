
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ ki_len; size_t iv_len; int context_len; int context; int label_len; int label; int iv; int mode; int * ctx_init; int * ki; } ;
typedef TYPE_1__ KBKDF ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 size_t EVP_MAC_size (int *) ;
 int OPENSSL_cleanse (unsigned char*,size_t) ;
 int OPENSSL_clear_free (unsigned char*,size_t) ;
 unsigned char* OPENSSL_zalloc (size_t) ;
 int PROV_R_INVALID_SEED_LENGTH ;
 int PROV_R_MISSING_MAC ;
 int PROV_R_NO_KEY_SET ;
 int be32 (size_t) ;
 int derive (int *,int ,int ,size_t,int ,int ,int ,int ,unsigned char*,size_t,int ,unsigned char*,size_t) ;

__attribute__((used)) static int kbkdf_derive(void *vctx, unsigned char *key, size_t keylen)
{
    KBKDF *ctx = (KBKDF *)vctx;
    int ret = 0;
    unsigned char *k_i = ((void*)0);
    uint32_t l = be32(keylen * 8);
    size_t h = 0;



    if (ctx->ctx_init == ((void*)0)) {
        if (ctx->ki_len == 0 || ctx->ki == ((void*)0)) {
            ERR_raise(ERR_LIB_PROV, PROV_R_NO_KEY_SET);
            return 0;
        }


        ERR_raise(ERR_LIB_PROV, PROV_R_MISSING_MAC);
        return 0;
    }

    h = EVP_MAC_size(ctx->ctx_init);
    if (h == 0)
        goto done;
    if (ctx->iv_len != 0 && ctx->iv_len != h) {
        ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_SEED_LENGTH);
        goto done;
    }

    k_i = OPENSSL_zalloc(h);
    if (k_i == ((void*)0))
        goto done;

    ret = derive(ctx->ctx_init, ctx->mode, ctx->iv, ctx->iv_len, ctx->label,
                 ctx->label_len, ctx->context, ctx->context_len, k_i, h, l,
                 key, keylen);
done:
    if (ret != 1)
        OPENSSL_cleanse(key, keylen);
    OPENSSL_clear_free(k_i, h);
    return ret;
}
