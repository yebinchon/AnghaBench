
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdIOCtx {int dummy; } ;


 int php_write (void*,int) ;

__attribute__((used)) static int _php_image_output_putbuf(struct gdIOCtx *ctx, const void* buf, int l)
{
 return php_write((void *)buf, l);
}
