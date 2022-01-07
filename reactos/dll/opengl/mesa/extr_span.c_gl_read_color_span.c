
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int (* ReadColorSpan ) (TYPE_3__*,size_t,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;} ;
struct TYPE_10__ {int RasterMask; TYPE_2__ Driver; TYPE_1__* Buffer; } ;
struct TYPE_8__ {scalar_t__ Height; scalar_t__ Width; } ;
typedef size_t GLuint ;
typedef scalar_t__ GLubyte ;
typedef scalar_t__ GLint ;
typedef TYPE_3__ GLcontext ;


 int ALPHABUF_BIT ;
 size_t MIN2 (size_t,scalar_t__) ;
 int gl_read_alpha_span (TYPE_3__*,size_t,scalar_t__,scalar_t__,scalar_t__*) ;
 int stub1 (TYPE_3__*,size_t,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int stub2 (TYPE_3__*,size_t,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;

void gl_read_color_span( GLcontext *ctx,
                         GLuint n, GLint x, GLint y,
    GLubyte red[], GLubyte green[],
    GLubyte blue[], GLubyte alpha[] )
{
   register GLuint i;

   if (y<0 || y>=ctx->Buffer->Height || x>=ctx->Buffer->Width) {

      for (i=0;i<n;i++) {
  red[i] = green[i] = blue[i] = alpha[i] = 0;
      }
   }
   else {
      if (x>=0 && x+n<=ctx->Buffer->Width) {

  (*ctx->Driver.ReadColorSpan)( ctx, n, x, y, red, green, blue, alpha );
         if (ctx->RasterMask & ALPHABUF_BIT) {
            gl_read_alpha_span( ctx, n, x, y, alpha );
         }
      }
      else {
  i = 0;
  if (x<0) {
     while (x<0 && n>0) {
        red[i] = green[i] = blue[i] = alpha[i] = 0;
        x++;
        n--;
        i++;
     }
  }
  n = MIN2( n, ctx->Buffer->Width - x );
  (*ctx->Driver.ReadColorSpan)( ctx, n, x, y, red+i, green+i, blue+i, alpha+i);
         if (ctx->RasterMask & ALPHABUF_BIT) {
            gl_read_alpha_span( ctx, n, x, y, alpha+i );
         }
      }
   }
}
