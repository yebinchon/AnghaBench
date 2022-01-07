
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {char type; int session_id_len; int session_id; int xcghash_len; int xcghash; int key_len; int key; int digest; int provctx; } ;
struct TYPE_8__ {scalar_t__ data_size; int * data; } ;
typedef TYPE_1__ OSSL_PARAM ;
typedef int OPENSSL_CTX ;
typedef TYPE_2__ KDF_SSHKDF ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int OSSL_KDF_PARAM_KEY ;
 int OSSL_KDF_PARAM_SSHKDF_SESSION_ID ;
 int OSSL_KDF_PARAM_SSHKDF_TYPE ;
 int OSSL_KDF_PARAM_SSHKDF_XCGHASH ;
 TYPE_1__* OSSL_PARAM_locate_const (TYPE_1__ const*,int ) ;
 int * PROV_LIBRARY_CONTEXT_OF (int ) ;
 int PROV_R_VALUE_ERROR ;
 int ossl_prov_digest_load_from_params (int *,TYPE_1__ const*,int *) ;
 int sshkdf_set_membuf (int *,int *,TYPE_1__ const*) ;

__attribute__((used)) static int kdf_sshkdf_set_ctx_params(void *vctx, const OSSL_PARAM params[])
{
    const OSSL_PARAM *p;
    KDF_SSHKDF *ctx = vctx;
    OPENSSL_CTX *provctx = PROV_LIBRARY_CONTEXT_OF(ctx->provctx);
    int t;

    if (!ossl_prov_digest_load_from_params(&ctx->digest, params, provctx))
        return 0;

    if ((p = OSSL_PARAM_locate_const(params, OSSL_KDF_PARAM_KEY)) != ((void*)0))
        if (!sshkdf_set_membuf(&ctx->key, &ctx->key_len, p))
            return 0;

    if ((p = OSSL_PARAM_locate_const(params, OSSL_KDF_PARAM_SSHKDF_XCGHASH))
        != ((void*)0))
        if (!sshkdf_set_membuf(&ctx->xcghash, &ctx->xcghash_len, p))
            return 0;

    if ((p = OSSL_PARAM_locate_const(params, OSSL_KDF_PARAM_SSHKDF_SESSION_ID))
        != ((void*)0))
        if (!sshkdf_set_membuf(&ctx->session_id, &ctx->session_id_len, p))
            return 0;

    if ((p = OSSL_PARAM_locate_const(params, OSSL_KDF_PARAM_SSHKDF_TYPE))
        != ((void*)0)) {
        if (p->data == ((void*)0) || p->data_size == 0)
            return 0;
        t = *(unsigned char *)p->data;
        if (t < 65 || t > 70) {
            ERR_raise(ERR_LIB_PROV, PROV_R_VALUE_ERROR);
            return 0;
        }
        ctx->type = (char)t;
    }
    return 1;
}
