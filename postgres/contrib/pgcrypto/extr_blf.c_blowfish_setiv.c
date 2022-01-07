
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_3__ {void* iv1; void* iv0; } ;
typedef TYPE_1__ BlowfishContext ;


 void* GET_32BIT_MSB_FIRST (int const*) ;

void
blowfish_setiv(BlowfishContext *ctx, const uint8 *iv)
{
 ctx->iv0 = GET_32BIT_MSB_FIRST(iv);
 ctx->iv1 = GET_32BIT_MSB_FIRST(iv + 4);
}
