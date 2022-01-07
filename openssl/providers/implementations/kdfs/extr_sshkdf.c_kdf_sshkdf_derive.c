
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; int session_id_len; int * session_id; int xcghash_len; int * xcghash; int key_len; int * key; int digest; } ;
typedef TYPE_1__ KDF_SSHKDF ;
typedef int EVP_MD ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int PROV_R_MISSING_KEY ;
 int PROV_R_MISSING_MESSAGE_DIGEST ;
 int PROV_R_MISSING_SESSION_ID ;
 int PROV_R_MISSING_TYPE ;
 int PROV_R_MISSING_XCGHASH ;
 int SSHKDF (int const*,int *,int ,int *,int ,int *,int ,scalar_t__,unsigned char*,size_t) ;
 int * ossl_prov_digest_md (int *) ;

__attribute__((used)) static int kdf_sshkdf_derive(void *vctx, unsigned char *key,
                             size_t keylen)
{
    KDF_SSHKDF *ctx = (KDF_SSHKDF *)vctx;
    const EVP_MD *md = ossl_prov_digest_md(&ctx->digest);

    if (md == ((void*)0)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_MISSING_MESSAGE_DIGEST);
        return 0;
    }
    if (ctx->key == ((void*)0)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_MISSING_KEY);
        return 0;
    }
    if (ctx->xcghash == ((void*)0)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_MISSING_XCGHASH);
        return 0;
    }
    if (ctx->session_id == ((void*)0)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_MISSING_SESSION_ID);
        return 0;
    }
    if (ctx->type == 0) {
        ERR_raise(ERR_LIB_PROV, PROV_R_MISSING_TYPE);
        return 0;
    }
    return SSHKDF(md, ctx->key, ctx->key_len,
                  ctx->xcghash, ctx->xcghash_len,
                  ctx->session_id, ctx->session_id_len,
                  ctx->type, key, keylen);
}
