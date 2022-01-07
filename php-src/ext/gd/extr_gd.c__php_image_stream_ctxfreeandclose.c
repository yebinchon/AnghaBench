
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdIOCtx {int * data; } ;
typedef int php_stream ;


 int efree (struct gdIOCtx*) ;
 int php_stream_close (int *) ;

__attribute__((used)) static void _php_image_stream_ctxfreeandclose(struct gdIOCtx *ctx)
{

 if(ctx->data) {
  php_stream_close((php_stream *) ctx->data);
  ctx->data = ((void*)0);
 }
 if(ctx) {
  efree(ctx);
 }
}
