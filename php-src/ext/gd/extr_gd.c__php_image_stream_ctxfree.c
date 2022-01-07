
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdIOCtx {int * data; } ;


 int efree (struct gdIOCtx*) ;

__attribute__((used)) static void _php_image_stream_ctxfree(struct gdIOCtx *ctx)
{
 if(ctx->data) {
  ctx->data = ((void*)0);
 }
 if(ctx) {
  efree(ctx);
 }
}
