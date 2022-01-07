
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdIOCtx {int dummy; } ;


 int php_write (unsigned char*,int) ;

__attribute__((used)) static void _php_image_output_putc(struct gdIOCtx *ctx, int c)
{




 unsigned char ch = (unsigned char) c;
 php_write(&ch, 1);
}
