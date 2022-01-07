
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct sha512_ctx {int buflen; int* total; int* H; int * buffer; } ;


 int SWAP (int) ;
 int fillbuf ;
 int memcpy (int *,int ,size_t) ;
 int sha512_process_block (int *,size_t,struct sha512_ctx*) ;

__attribute__((used)) static void * sha512_finish_ctx (struct sha512_ctx *ctx, void *resbuf) {

 uint64_t bytes = ctx->buflen;
 size_t pad;
 unsigned int i;


 ctx->total[0] += bytes;
 if (ctx->total[0] < bytes) {
  ++ctx->total[1];
 }

 pad = bytes >= 112 ? 128 + 112 - (size_t)bytes : 112 - (size_t)bytes;
 memcpy(&ctx->buffer[bytes], fillbuf, pad);


 *(uint64_t *) &ctx->buffer[bytes + pad + 8] = SWAP(ctx->total[0] << 3);
 *(uint64_t *) &ctx->buffer[bytes + pad] = SWAP((ctx->total[1] << 3) |
      (ctx->total[0] >> 61));


 sha512_process_block(ctx->buffer, (size_t)(bytes + pad + 16), ctx);


 for (i = 0; i < 8; ++i) {
  ((uint64_t *) resbuf)[i] = SWAP(ctx->H[i]);
 }

 return resbuf;
}
