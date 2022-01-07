
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int c; } ;
struct TYPE_5__ {int* c; } ;
struct TYPE_7__ {TYPE_2__ cmac; TYPE_1__ nonce; } ;
typedef TYPE_3__ CCM128_CONTEXT ;


 int memcpy (unsigned char*,int ,unsigned int) ;

size_t CRYPTO_ccm128_tag(CCM128_CONTEXT *ctx, unsigned char *tag, size_t len)
{
    unsigned int M = (ctx->nonce.c[0] >> 3) & 7;

    M *= 2;
    M += 2;
    if (len != M)
        return 0;
    memcpy(tag, ctx->cmac.c, M);
    return M;
}
