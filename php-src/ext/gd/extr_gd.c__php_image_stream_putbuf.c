
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdIOCtx {scalar_t__ data; } ;
typedef int php_stream ;


 int php_stream_write (int *,void*,int) ;

__attribute__((used)) static int _php_image_stream_putbuf(struct gdIOCtx *ctx, const void* buf, int l)
{
 php_stream * stream = (php_stream *)ctx->data;
 return php_stream_write(stream, (void *)buf, l);
}
