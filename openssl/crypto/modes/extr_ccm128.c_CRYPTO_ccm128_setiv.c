
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u8 ;
typedef int mlen ;
struct TYPE_4__ {int* c; scalar_t__* u; } ;
struct TYPE_5__ {TYPE_1__ nonce; } ;
typedef TYPE_2__ CCM128_CONTEXT ;


 int memcpy (int*,unsigned char const*,int) ;

int CRYPTO_ccm128_setiv(CCM128_CONTEXT *ctx,
                        const unsigned char *nonce, size_t nlen, size_t mlen)
{
    unsigned int L = ctx->nonce.c[0] & 7;

    if (nlen < (14 - L))
        return -1;

    if (sizeof(mlen) == 8 && L >= 3) {
        ctx->nonce.c[8] = (u8)(mlen >> (56 % (sizeof(mlen) * 8)));
        ctx->nonce.c[9] = (u8)(mlen >> (48 % (sizeof(mlen) * 8)));
        ctx->nonce.c[10] = (u8)(mlen >> (40 % (sizeof(mlen) * 8)));
        ctx->nonce.c[11] = (u8)(mlen >> (32 % (sizeof(mlen) * 8)));
    } else
        ctx->nonce.u[1] = 0;

    ctx->nonce.c[12] = (u8)(mlen >> 24);
    ctx->nonce.c[13] = (u8)(mlen >> 16);
    ctx->nonce.c[14] = (u8)(mlen >> 8);
    ctx->nonce.c[15] = (u8)mlen;

    ctx->nonce.c[0] &= ~0x40;
    memcpy(&ctx->nonce.c[1], nonce, 14 - L);

    return 0;
}
