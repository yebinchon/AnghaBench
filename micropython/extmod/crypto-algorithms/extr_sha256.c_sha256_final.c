
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_4__ {int datalen; int* data; int bitlen; int* state; } ;
typedef TYPE_1__ CRYAL_SHA256_CTX ;
typedef int BYTE ;


 int memset (int*,int ,int) ;
 int sha256_transform (TYPE_1__*,int*) ;

void sha256_final(CRYAL_SHA256_CTX *ctx, BYTE hash[])
{
 WORD i;

 i = ctx->datalen;


 if (ctx->datalen < 56) {
  ctx->data[i++] = 0x80;
  while (i < 56)
   ctx->data[i++] = 0x00;
 }
 else {
  ctx->data[i++] = 0x80;
  while (i < 64)
   ctx->data[i++] = 0x00;
  sha256_transform(ctx, ctx->data);
  memset(ctx->data, 0, 56);
 }


 ctx->bitlen += ctx->datalen * 8;
 ctx->data[63] = ctx->bitlen;
 ctx->data[62] = ctx->bitlen >> 8;
 ctx->data[61] = ctx->bitlen >> 16;
 ctx->data[60] = ctx->bitlen >> 24;
 ctx->data[59] = ctx->bitlen >> 32;
 ctx->data[58] = ctx->bitlen >> 40;
 ctx->data[57] = ctx->bitlen >> 48;
 ctx->data[56] = ctx->bitlen >> 56;
 sha256_transform(ctx, ctx->data);



 for (i = 0; i < 4; ++i) {
  hash[i] = (ctx->state[0] >> (24 - i * 8)) & 0x000000ff;
  hash[i + 4] = (ctx->state[1] >> (24 - i * 8)) & 0x000000ff;
  hash[i + 8] = (ctx->state[2] >> (24 - i * 8)) & 0x000000ff;
  hash[i + 12] = (ctx->state[3] >> (24 - i * 8)) & 0x000000ff;
  hash[i + 16] = (ctx->state[4] >> (24 - i * 8)) & 0x000000ff;
  hash[i + 20] = (ctx->state[5] >> (24 - i * 8)) & 0x000000ff;
  hash[i + 24] = (ctx->state[6] >> (24 - i * 8)) & 0x000000ff;
  hash[i + 28] = (ctx->state[7] >> (24 - i * 8)) & 0x000000ff;
 }
}
