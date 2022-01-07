
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lower_bound_checks; int iter; int salt_len; int * salt; int pass_len; int * pass; int digest; } ;
typedef TYPE_1__ KDF_PBKDF2 ;
typedef int EVP_MD ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int PROV_R_MISSING_PASS ;
 int PROV_R_MISSING_SALT ;
 int * ossl_prov_digest_md (int *) ;
 int pbkdf2_derive (char*,int ,int *,int ,int ,int const*,unsigned char*,size_t,int ) ;

__attribute__((used)) static int kdf_pbkdf2_derive(void *vctx, unsigned char *key,
                             size_t keylen)
{
    KDF_PBKDF2 *ctx = (KDF_PBKDF2 *)vctx;
    const EVP_MD *md = ossl_prov_digest_md(&ctx->digest);

    if (ctx->pass == ((void*)0)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_MISSING_PASS);
        return 0;
    }

    if (ctx->salt == ((void*)0)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_MISSING_SALT);
        return 0;
    }

    return pbkdf2_derive((char *)ctx->pass, ctx->pass_len,
                         ctx->salt, ctx->salt_len, ctx->iter,
                         md, key, keylen, ctx->lower_bound_checks);
}
