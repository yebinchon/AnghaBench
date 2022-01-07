
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* H; scalar_t__* W; scalar_t__ sizeLo; scalar_t__ sizeHi; scalar_t__ lenW; } ;
typedef TYPE_1__ R_SHA_CTX ;



void SHA1_Init(R_SHA_CTX *ctx) {
 int i;

 ctx->lenW = 0;
 ctx->sizeHi = ctx->sizeLo = 0;


 ctx->H[0] = 0x67452301;
 ctx->H[1] = 0xefcdab89;
 ctx->H[2] = 0x98badcfe;
 ctx->H[3] = 0x10325476;
 ctx->H[4] = 0xc3d2e1f0;

 for (i = 0; i < 80; i++) {
  ctx->W[i] = 0;
 }
}
