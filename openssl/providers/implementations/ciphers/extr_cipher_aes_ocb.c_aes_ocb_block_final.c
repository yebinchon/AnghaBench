
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ enc; } ;
struct TYPE_9__ {size_t data_buf_len; scalar_t__ aad_buf_len; scalar_t__ taglen; int iv_state; int tag; TYPE_1__ base; int aad_buf; int data_buf; int key_set; } ;
typedef TYPE_2__ PROV_AES_OCB_CTX ;


 int IV_STATE_FINISHED ;
 int aes_generic_ocb_cipher (TYPE_2__*,int ,unsigned char*,size_t) ;
 int aes_generic_ocb_final (TYPE_2__*) ;
 int aes_generic_ocb_gettag (TYPE_2__*,int ,scalar_t__) ;
 int aes_generic_ocb_setaad (TYPE_2__*,int ,scalar_t__) ;
 int update_iv (TYPE_2__*) ;

__attribute__((used)) static int aes_ocb_block_final(void *vctx, unsigned char *out, size_t *outl,
                               size_t outsize)
{
    PROV_AES_OCB_CTX *ctx = (PROV_AES_OCB_CTX *)vctx;


    if (!ctx->key_set || !update_iv(ctx))
        return 0;





    *outl = 0;
    if (ctx->data_buf_len > 0) {
        if (!aes_generic_ocb_cipher(ctx, ctx->data_buf, out, ctx->data_buf_len))
            return 0;
        *outl = ctx->data_buf_len;
        ctx->data_buf_len = 0;
    }
    if (ctx->aad_buf_len > 0) {
        if (!aes_generic_ocb_setaad(ctx, ctx->aad_buf, ctx->aad_buf_len))
            return 0;
        ctx->aad_buf_len = 0;
    }
    if (ctx->base.enc) {

        if (!aes_generic_ocb_gettag(ctx, ctx->tag, ctx->taglen))
            return 0;
    } else {

        if (ctx->taglen == 0)
            return 0;
        if (!aes_generic_ocb_final(ctx))
            return 0;
    }

    ctx->iv_state = IV_STATE_FINISHED;
    return 1;
}
