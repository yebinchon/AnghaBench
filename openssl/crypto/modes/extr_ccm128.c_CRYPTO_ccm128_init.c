
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int block128_f ;
struct TYPE_4__ {int* c; } ;
struct TYPE_5__ {void* key; int block; scalar_t__ blocks; TYPE_1__ nonce; } ;
typedef TYPE_2__ CCM128_CONTEXT ;


 int memset (int*,int ,int) ;

void CRYPTO_ccm128_init(CCM128_CONTEXT *ctx,
                        unsigned int M, unsigned int L, void *key,
                        block128_f block)
{
    memset(ctx->nonce.c, 0, sizeof(ctx->nonce.c));
    ctx->nonce.c[0] = ((u8)(L - 1) & 7) | (u8)(((M - 2) / 2) & 7) << 3;
    ctx->blocks = 0;
    ctx->block = block;
    ctx->key = key;
}
