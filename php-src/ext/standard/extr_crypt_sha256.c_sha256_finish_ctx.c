
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sha256_ctx {int buflen; int* total; int* H; int * buffer; } ;


 int SWAP (int) ;
 int fillbuf ;
 int memcpy (int *,int ,size_t) ;
 int sha256_process_block (int *,int,struct sha256_ctx*) ;

__attribute__((used)) static void * sha256_finish_ctx(struct sha256_ctx *ctx, void *resbuf) {

 uint32_t bytes = ctx->buflen;
 size_t pad;
 unsigned int i;


 ctx->total[0] += bytes;
 if (ctx->total[0] < bytes) {
  ++ctx->total[1];
 }

 pad = bytes >= 56 ? 64 + 56 - bytes : 56 - bytes;
 memcpy(&ctx->buffer[bytes], fillbuf, pad);


 *(uint32_t *) &ctx->buffer[bytes + pad + 4] = SWAP (ctx->total[0] << 3);
 *(uint32_t *) &ctx->buffer[bytes + pad] = SWAP ((ctx->total[1] << 3) |
        (ctx->total[0] >> 29));


 sha256_process_block(ctx->buffer, bytes + pad + 8, ctx);


 for (i = 0; i < 8; ++i) {
  ((uint32_t *) resbuf)[i] = SWAP(ctx->H[i]);
 }

 return resbuf;
}
