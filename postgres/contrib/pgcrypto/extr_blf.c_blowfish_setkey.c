
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8 ;
typedef int uint32 ;
struct TYPE_4__ {int* S0; int* S1; int* S2; int* S3; int* P; } ;
typedef TYPE_1__ BlowfishContext ;


 int Assert (int) ;
 int blowfish_encrypt (int,int,int*,TYPE_1__*) ;
 int* parray ;
 int* sbox0 ;
 int* sbox1 ;
 int* sbox2 ;
 int* sbox3 ;

void
blowfish_setkey(BlowfishContext *ctx,
    const uint8 *key, short keybytes)
{
 uint32 *S0 = ctx->S0;
 uint32 *S1 = ctx->S1;
 uint32 *S2 = ctx->S2;
 uint32 *S3 = ctx->S3;
 uint32 *P = ctx->P;
 uint32 str[2];
 int i;

 Assert(keybytes > 0 && keybytes <= (448 / 8));

 for (i = 0; i < 18; i++)
 {
  P[i] = parray[i];
  P[i] ^= ((uint32) key[(i * 4 + 0) % keybytes]) << 24;
  P[i] ^= ((uint32) key[(i * 4 + 1) % keybytes]) << 16;
  P[i] ^= ((uint32) key[(i * 4 + 2) % keybytes]) << 8;
  P[i] ^= ((uint32) key[(i * 4 + 3) % keybytes]);
 }

 for (i = 0; i < 256; i++)
 {
  S0[i] = sbox0[i];
  S1[i] = sbox1[i];
  S2[i] = sbox2[i];
  S3[i] = sbox3[i];
 }

 str[0] = str[1] = 0;

 for (i = 0; i < 18; i += 2)
 {
  blowfish_encrypt(str[0], str[1], str, ctx);
  P[i] = str[0];
  P[i + 1] = str[1];
 }

 for (i = 0; i < 256; i += 2)
 {
  blowfish_encrypt(str[0], str[1], str, ctx);
  S0[i] = str[0];
  S0[i + 1] = str[1];
 }
 for (i = 0; i < 256; i += 2)
 {
  blowfish_encrypt(str[0], str[1], str, ctx);
  S1[i] = str[0];
  S1[i + 1] = str[1];
 }
 for (i = 0; i < 256; i += 2)
 {
  blowfish_encrypt(str[0], str[1], str, ctx);
  S2[i] = str[0];
  S2[i + 1] = str[1];
 }
 for (i = 0; i < 256; i += 2)
 {
  blowfish_encrypt(str[0], str[1], str, ctx);
  S3[i] = str[0];
  S3[i + 1] = str[1];
 }
}
