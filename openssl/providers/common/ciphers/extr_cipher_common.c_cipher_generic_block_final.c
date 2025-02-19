
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t blocksize; unsigned char* buf; size_t bufsz; scalar_t__ pad; TYPE_1__* hw; scalar_t__ enc; } ;
struct TYPE_5__ {int (* cipher ) (TYPE_2__*,unsigned char*,unsigned char*,size_t) ;} ;
typedef TYPE_2__ PROV_CIPHER_CTX ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int PROV_R_CIPHER_OPERATION_FAILED ;
 int PROV_R_OUTPUT_BUFFER_TOO_SMALL ;
 int PROV_R_WRONG_FINAL_BLOCK_LENGTH ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 int padblock (unsigned char*,size_t*,size_t) ;
 int stub1 (TYPE_2__*,unsigned char*,unsigned char*,size_t) ;
 int stub2 (TYPE_2__*,unsigned char*,unsigned char*,size_t) ;
 int unpadblock (unsigned char*,size_t*,size_t) ;

int cipher_generic_block_final(void *vctx, unsigned char *out, size_t *outl,
                               size_t outsize)
{
    PROV_CIPHER_CTX *ctx = (PROV_CIPHER_CTX *)vctx;
    size_t blksz = ctx->blocksize;

    if (ctx->enc) {
        if (ctx->pad) {
            padblock(ctx->buf, &ctx->bufsz, blksz);
        } else if (ctx->bufsz == 0) {
            *outl = 0;
            return 1;
        } else if (ctx->bufsz != blksz) {
            ERR_raise(ERR_LIB_PROV, PROV_R_WRONG_FINAL_BLOCK_LENGTH);
            return 0;
        }

        if (outsize < blksz) {
            ERR_raise(ERR_LIB_PROV, PROV_R_OUTPUT_BUFFER_TOO_SMALL);
            return 0;
        }
        if (!ctx->hw->cipher(ctx, out, ctx->buf, blksz)) {
            ERR_raise(ERR_LIB_PROV, PROV_R_CIPHER_OPERATION_FAILED);
            return 0;
        }
        ctx->bufsz = 0;
        *outl = blksz;
        return 1;
    }


    if (ctx->bufsz != blksz) {
        if (ctx->bufsz == 0 && !ctx->pad) {
            *outl = 0;
            return 1;
        }
        ERR_raise(ERR_LIB_PROV, PROV_R_WRONG_FINAL_BLOCK_LENGTH);
        return 0;
    }

    if (!ctx->hw->cipher(ctx, ctx->buf, ctx->buf, blksz)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_CIPHER_OPERATION_FAILED);
        return 0;
    }

    if (ctx->pad && !unpadblock(ctx->buf, &ctx->bufsz, blksz)) {

        return 0;
    }

    if (outsize < ctx->bufsz) {
        ERR_raise(ERR_LIB_PROV, PROV_R_OUTPUT_BUFFER_TOO_SMALL);
        return 0;
    }
    memcpy(out, ctx->buf, ctx->bufsz);
    *outl = ctx->bufsz;
    ctx->bufsz = 0;
    return 1;
}
