
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ tls_aad_len; int tag_set; scalar_t__ len_set; scalar_t__ iv_set; int m; int buf; scalar_t__ enc; int key_set; TYPE_1__* hw; } ;
struct TYPE_9__ {int (* auth_decrypt ) (TYPE_2__*,unsigned char const*,unsigned char*,size_t,int ,int ) ;int (* auth_encrypt ) (TYPE_2__*,unsigned char const*,unsigned char*,size_t,int *,int ) ;int (* setaad ) (TYPE_2__*,unsigned char const*,size_t) ;} ;
typedef TYPE_1__ PROV_CCM_HW ;
typedef TYPE_2__ PROV_CCM_CTX ;


 scalar_t__ UNINITIALISED_SIZET ;
 int ccm_set_iv (TYPE_2__*,size_t) ;
 int ccm_tls_cipher (TYPE_2__*,unsigned char*,size_t*,unsigned char const*,size_t) ;
 int stub1 (TYPE_2__*,unsigned char const*,size_t) ;
 int stub2 (TYPE_2__*,unsigned char const*,unsigned char*,size_t,int *,int ) ;
 int stub3 (TYPE_2__*,unsigned char const*,unsigned char*,size_t,int ,int ) ;

__attribute__((used)) static int ccm_cipher_internal(PROV_CCM_CTX *ctx, unsigned char *out,
                               size_t *padlen, const unsigned char *in,
                               size_t len)
{
    int rv = 0;
    size_t olen = 0;
    const PROV_CCM_HW *hw = ctx->hw;


    if (!ctx->key_set)
        return 0;

    if (ctx->tls_aad_len != UNINITIALISED_SIZET)
        return ccm_tls_cipher(ctx, out, padlen, in, len);


    if (in == ((void*)0) && out != ((void*)0))
        goto finish;

    if (!ctx->iv_set)
        goto err;

    if (out == ((void*)0)) {
        if (in == ((void*)0)) {
            if (!ccm_set_iv(ctx, len))
                goto err;
        } else {

            if (!ctx->len_set && len)
                goto err;
            if (!hw->setaad(ctx, in, len))
                goto err;
        }
    } else {

        if (!ctx->len_set && !ccm_set_iv(ctx, len))
            goto err;

        if (ctx->enc) {
            if (!hw->auth_encrypt(ctx, in, out, len, ((void*)0), 0))
                goto err;
            ctx->tag_set = 1;
        } else {

            if (!ctx->tag_set)
                goto err;

            if (!hw->auth_decrypt(ctx, in, out, len, ctx->buf, ctx->m))
                goto err;

            ctx->iv_set = 0;
            ctx->tag_set = 0;
            ctx->len_set = 0;
        }
    }
    olen = len;
finish:
    rv = 1;
err:
    *padlen = olen;
    return rv;
}
