
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ tls_aad_len; scalar_t__ iv_state; scalar_t__ taglen; int buf; int enc; int ivlen; int iv; int key_set; TYPE_1__* hw; } ;
struct TYPE_10__ {int (* cipherfinal ) (TYPE_2__*,int ) ;int (* cipherupdate ) (TYPE_2__*,unsigned char const*,size_t,unsigned char*) ;int (* aadupdate ) (TYPE_2__*,unsigned char const*,size_t) ;int (* setiv ) (TYPE_2__*,int ,int ) ;} ;
typedef TYPE_1__ PROV_GCM_HW ;
typedef TYPE_2__ PROV_GCM_CTX ;


 scalar_t__ IV_STATE_BUFFERED ;
 scalar_t__ IV_STATE_COPIED ;
 scalar_t__ IV_STATE_FINISHED ;
 scalar_t__ IV_STATE_UNINITIALISED ;
 scalar_t__ UNINITIALISED_SIZET ;
 int gcm_iv_generate (TYPE_2__*,int ) ;
 int gcm_tls_cipher (TYPE_2__*,unsigned char*,size_t*,unsigned char const*,size_t) ;
 int stub1 (TYPE_2__*,int ,int ) ;
 int stub2 (TYPE_2__*,unsigned char const*,size_t) ;
 int stub3 (TYPE_2__*,unsigned char const*,size_t,unsigned char*) ;
 int stub4 (TYPE_2__*,int ) ;

__attribute__((used)) static int gcm_cipher_internal(PROV_GCM_CTX *ctx, unsigned char *out,
                               size_t *padlen, const unsigned char *in,
                               size_t len)
{
    size_t olen = 0;
    int rv = 0;
    const PROV_GCM_HW *hw = ctx->hw;

    if (ctx->tls_aad_len != UNINITIALISED_SIZET)
        return gcm_tls_cipher(ctx, out, padlen, in, len);

    if (!ctx->key_set || ctx->iv_state == IV_STATE_FINISHED)
        goto err;







    if (ctx->iv_state == IV_STATE_UNINITIALISED) {
        if (!ctx->enc || !gcm_iv_generate(ctx, 0))
            goto err;
    }

    if (ctx->iv_state == IV_STATE_BUFFERED) {
        if (!hw->setiv(ctx, ctx->iv, ctx->ivlen))
            goto err;
        ctx->iv_state = IV_STATE_COPIED;
    }

    if (in != ((void*)0)) {

        if (out == ((void*)0)) {
            if (!hw->aadupdate(ctx, in, len))
                goto err;
        } else {

            if (!hw->cipherupdate(ctx, in, len, out))
                goto err;
        }
    } else {

        if (!ctx->enc && ctx->taglen == UNINITIALISED_SIZET)
            goto err;
        if (!hw->cipherfinal(ctx, ctx->buf))
            goto err;
        ctx->iv_state = IV_STATE_FINISHED;
        goto finish;
    }
    olen = len;
finish:
    rv = 1;
err:
    *padlen = olen;
    return rv;
}
