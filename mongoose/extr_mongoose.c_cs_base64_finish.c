
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs_base64_ctx {scalar_t__ chunk_size; int user_data; int (* b64_putc ) (char,int ) ;int * chunk; } ;


 int cs_base64_emit_chunk (struct cs_base64_ctx*) ;
 int memset (int *,int ,int) ;
 int stub1 (char,int ) ;

void cs_base64_finish(struct cs_base64_ctx *ctx) {
  if (ctx->chunk_size > 0) {
    int i;
    memset(&ctx->chunk[ctx->chunk_size], 0, 3 - ctx->chunk_size);
    cs_base64_emit_chunk(ctx);
    for (i = 0; i < (3 - ctx->chunk_size); i++) {
      ctx->b64_putc('=', ctx->user_data);
    }
  }
}
