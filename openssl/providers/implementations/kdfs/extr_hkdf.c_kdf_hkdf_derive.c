
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; int info_len; int info; int key_len; int * key; int salt_len; int salt; int digest; } ;
typedef TYPE_1__ KDF_HKDF ;
typedef int EVP_MD ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;



 int HKDF (int const*,int ,int ,int *,int ,int ,int ,unsigned char*,size_t) ;
 int HKDF_Expand (int const*,int *,int ,int ,int ,unsigned char*,size_t) ;
 int HKDF_Extract (int const*,int ,int ,int *,int ,unsigned char*,size_t) ;
 int PROV_R_MISSING_KEY ;
 int PROV_R_MISSING_MESSAGE_DIGEST ;
 int * ossl_prov_digest_md (int *) ;

__attribute__((used)) static int kdf_hkdf_derive(void *vctx, unsigned char *key, size_t keylen)
{
    KDF_HKDF *ctx = (KDF_HKDF *)vctx;
    const EVP_MD *md = ossl_prov_digest_md(&ctx->digest);

    if (md == ((void*)0)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_MISSING_MESSAGE_DIGEST);
        return 0;
    }
    if (ctx->key == ((void*)0)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_MISSING_KEY);
        return 0;
    }

    switch (ctx->mode) {
    case 129:
        return HKDF(md, ctx->salt, ctx->salt_len, ctx->key,
                    ctx->key_len, ctx->info, ctx->info_len, key,
                    keylen);

    case 128:
        return HKDF_Extract(md, ctx->salt, ctx->salt_len, ctx->key,
                            ctx->key_len, key, keylen);

    case 130:
        return HKDF_Expand(md, ctx->key, ctx->key_len, ctx->info,
                           ctx->info_len, key, keylen);

    default:
        return 0;
    }
}
