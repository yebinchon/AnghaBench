
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int session_id_len; int session_id; int xcghash_len; int xcghash; int key_len; int key; int digest; } ;
typedef TYPE_1__ KDF_SSHKDF ;


 int OPENSSL_clear_free (int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int ossl_prov_digest_reset (int *) ;

__attribute__((used)) static void kdf_sshkdf_reset(void *vctx)
{
    KDF_SSHKDF *ctx = (KDF_SSHKDF *)vctx;

    ossl_prov_digest_reset(&ctx->digest);
    OPENSSL_clear_free(ctx->key, ctx->key_len);
    OPENSSL_clear_free(ctx->xcghash, ctx->xcghash_len);
    OPENSSL_clear_free(ctx->session_id, ctx->session_id_len);
    memset(ctx, 0, sizeof(*ctx));
}
