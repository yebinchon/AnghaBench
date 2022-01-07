
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int * P; int * S3; int * S2; int * S1; int * S0; } ;
typedef TYPE_1__ BlowfishContext ;


 int ROUND (int) ;

__attribute__((used)) static void
blowfish_decrypt(uint32 xL, uint32 xR, uint32 *output,
     BlowfishContext *ctx)
{
 uint32 *S0 = ctx->S0;
 uint32 *S1 = ctx->S1;
 uint32 *S2 = ctx->S2;
 uint32 *S3 = ctx->S3;
 uint32 *P = ctx->P;
 uint32 t;

 ROUND(17);
 ROUND(16);
 ROUND(15);
 ROUND(14);
 ROUND(13);
 ROUND(12);
 ROUND(11);
 ROUND(10);
 ROUND(9);
 ROUND(8);
 ROUND(7);
 ROUND(6);
 ROUND(5);
 ROUND(4);
 ROUND(3);
 ROUND(2);
 xL ^= P[1];
 xR ^= P[0];

 output[0] = xR;
 output[1] = xL;
}
