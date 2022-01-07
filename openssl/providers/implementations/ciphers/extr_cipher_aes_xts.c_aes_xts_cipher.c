
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * key2; int * key1; } ;
struct TYPE_4__ {int enc; int iv; int iv_set; } ;
struct TYPE_5__ {TYPE_1__ base; TYPE_3__ xts; int (* stream ) (unsigned char const*,unsigned char*,size_t,int *,int *,int ) ;} ;
typedef TYPE_2__ PROV_AES_XTS_CTX ;


 size_t AES_BLOCK_SIZE ;
 scalar_t__ CRYPTO_xts128_encrypt (TYPE_3__*,int ,unsigned char const*,unsigned char*,size_t,int ) ;
 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int PROV_R_XTS_DATA_UNIT_IS_TOO_LARGE ;
 size_t XTS_MAX_BLOCKS_PER_DATA_UNIT ;
 int stub1 (unsigned char const*,unsigned char*,size_t,int *,int *,int ) ;

__attribute__((used)) static int aes_xts_cipher(void *vctx, unsigned char *out, size_t *outl,
                          size_t outsize, const unsigned char *in, size_t inl)
{
    PROV_AES_XTS_CTX *ctx = (PROV_AES_XTS_CTX *)vctx;

    if (ctx->xts.key1 == ((void*)0)
            || ctx->xts.key2 == ((void*)0)
            || !ctx->base.iv_set
            || out == ((void*)0)
            || in == ((void*)0)
            || inl < AES_BLOCK_SIZE)
        return 0;







    if (inl > XTS_MAX_BLOCKS_PER_DATA_UNIT * AES_BLOCK_SIZE) {
        ERR_raise(ERR_LIB_PROV, PROV_R_XTS_DATA_UNIT_IS_TOO_LARGE);
        return 0;
    }

    if (ctx->stream != ((void*)0))
        (*ctx->stream)(in, out, inl, ctx->xts.key1, ctx->xts.key2, ctx->base.iv);
    else if (CRYPTO_xts128_encrypt(&ctx->xts, ctx->base.iv, in, out, inl,
                                   ctx->base.enc))
        return 0;

    *outl = inl;
    return 1;
}
