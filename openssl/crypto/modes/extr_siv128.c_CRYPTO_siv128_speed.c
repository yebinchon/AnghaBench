
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int crypto_ok; } ;
typedef TYPE_1__ SIV128_CONTEXT ;



int CRYPTO_siv128_speed(SIV128_CONTEXT *ctx, int arg)
{
    ctx->crypto_ok = (arg == 1) ? -1 : 1;
    return 1;
}
