
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {size_t m; unsigned char const* buf; unsigned char* iv; TYPE_1__* hw; scalar_t__ enc; int tls_aad_len; } ;
struct TYPE_8__ {int (* auth_decrypt ) (TYPE_2__*,unsigned char const*,unsigned char*,size_t,unsigned char*,size_t) ;int (* auth_encrypt ) (TYPE_2__*,unsigned char const*,unsigned char*,size_t,unsigned char*,size_t) ;int (* setaad ) (TYPE_2__*,unsigned char const*,int ) ;} ;
typedef TYPE_2__ PROV_CCM_CTX ;


 size_t EVP_CCM_TLS_EXPLICIT_IV_LEN ;
 int EVP_CCM_TLS_FIXED_IV_LEN ;
 int ccm_set_iv (TYPE_2__*,size_t) ;
 int memcpy (unsigned char*,unsigned char const*,size_t) ;
 int stub1 (TYPE_2__*,unsigned char const*,int ) ;
 int stub2 (TYPE_2__*,unsigned char const*,unsigned char*,size_t,unsigned char*,size_t) ;
 int stub3 (TYPE_2__*,unsigned char const*,unsigned char*,size_t,unsigned char*,size_t) ;

__attribute__((used)) static int ccm_tls_cipher(PROV_CCM_CTX *ctx,
                          unsigned char *out, size_t *padlen,
                          const unsigned char *in, size_t len)
{
    int rv = 0;
    size_t olen = 0;


    if (out != in || len < (EVP_CCM_TLS_EXPLICIT_IV_LEN + (size_t)ctx->m))
        goto err;


    if (ctx->enc)
        memcpy(out, ctx->buf, EVP_CCM_TLS_EXPLICIT_IV_LEN);

    memcpy(ctx->iv + EVP_CCM_TLS_FIXED_IV_LEN, in, EVP_CCM_TLS_EXPLICIT_IV_LEN);

    len -= EVP_CCM_TLS_EXPLICIT_IV_LEN + ctx->m;
    if (!ccm_set_iv(ctx, len))
        goto err;


    if (!ctx->hw->setaad(ctx, ctx->buf, ctx->tls_aad_len))
        goto err;


    in += EVP_CCM_TLS_EXPLICIT_IV_LEN;
    out += EVP_CCM_TLS_EXPLICIT_IV_LEN;
    if (ctx->enc) {
        if (!ctx->hw->auth_encrypt(ctx, in, out, len, out + len, ctx->m))
            goto err;
        olen = len + EVP_CCM_TLS_EXPLICIT_IV_LEN + ctx->m;
    } else {
        if (!ctx->hw->auth_decrypt(ctx, in, out, len,
                                   (unsigned char *)in + len, ctx->m))
            goto err;
        olen = len;
    }
    rv = 1;
err:
    *padlen = olen;
    return rv;
}
