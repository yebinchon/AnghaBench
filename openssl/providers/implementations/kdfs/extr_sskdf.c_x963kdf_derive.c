
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int info_len; int info; int secret_len; int * secret; int * macctx; int digest; } ;
typedef TYPE_1__ KDF_SSKDF ;
typedef int EVP_MD ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int PROV_R_MISSING_MESSAGE_DIGEST ;
 int PROV_R_MISSING_SECRET ;
 int PROV_R_NOT_SUPPORTED ;
 int SSKDF_hash_kdm (int const*,int *,int ,int ,int ,int,unsigned char*,size_t) ;
 int * ossl_prov_digest_md (int *) ;

__attribute__((used)) static int x963kdf_derive(void *vctx, unsigned char *key, size_t keylen)
{
    KDF_SSKDF *ctx = (KDF_SSKDF *)vctx;
    const EVP_MD *md = ossl_prov_digest_md(&ctx->digest);

    if (ctx->secret == ((void*)0)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_MISSING_SECRET);
        return 0;
    }

    if (ctx->macctx != ((void*)0)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_NOT_SUPPORTED);
        return 0;
    }


    if (md == ((void*)0)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_MISSING_MESSAGE_DIGEST);
        return 0;
    }

    return SSKDF_hash_kdm(md, ctx->secret, ctx->secret_len,
                          ctx->info, ctx->info_len, 1, key, keylen);
}
