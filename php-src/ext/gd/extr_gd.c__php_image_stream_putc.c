
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdIOCtx {scalar_t__ data; } ;
typedef int php_stream ;


 int php_stream_write (int *,char*,int) ;

__attribute__((used)) static void _php_image_stream_putc(struct gdIOCtx *ctx, int c) {
 char ch = (char) c;
 php_stream * stream = (php_stream *)ctx->data;
 php_stream_write(stream, &ch, 1);
}
