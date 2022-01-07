
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int ColorMask; } ;
struct TYPE_7__ {int (* ReadColorPixels ) (TYPE_3__*,int ,int const*,int const*,int *,int *,int *,int *,int const*) ;} ;
struct TYPE_9__ {int RasterMask; TYPE_2__ Color; TYPE_1__ Driver; } ;
typedef int GLuint ;
typedef int GLubyte ;
typedef int GLint ;
typedef TYPE_3__ GLcontext ;


 int ALPHABUF_BIT ;
 int MEMCPY (int *,int *,int ) ;
 int PB_SIZE ;
 int gl_read_alpha_pixels (TYPE_3__*,int ,int const*,int const*,int *,int const*) ;
 int stub1 (TYPE_3__*,int ,int const*,int const*,int *,int *,int *,int *,int const*) ;

void gl_mask_color_pixels( GLcontext *ctx,
                           GLuint n, const GLint x[], const GLint y[],
                           GLubyte red[], GLubyte green[],
                           GLubyte blue[], GLubyte alpha[],
                           const GLubyte mask[] )
{
   GLubyte r[PB_SIZE], g[PB_SIZE], b[PB_SIZE], a[PB_SIZE];

   (*ctx->Driver.ReadColorPixels)( ctx, n, x, y, r, g, b, a, mask );
   if (ctx->RasterMask & ALPHABUF_BIT) {
      gl_read_alpha_pixels( ctx, n, x, y, a, mask );
   }

   if ((ctx->Color.ColorMask & 8) == 0) {

      MEMCPY( red, r, n );
   }
   if ((ctx->Color.ColorMask & 4) == 0) {

      MEMCPY( green, g, n );
   }
   if ((ctx->Color.ColorMask & 2) == 0) {

      MEMCPY( blue, b, n );
   }
   if ((ctx->Color.ColorMask & 1) == 0) {

      MEMCPY( alpha, a, n );
   }
}
