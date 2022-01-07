
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* ReadColorPixels ) (TYPE_2__*,int ,int const*,int const*,int *,int *,int *,int *,int *) ;} ;
struct TYPE_8__ {int RasterMask; TYPE_1__ Driver; } ;
typedef int GLuint ;
typedef int GLubyte ;
typedef int GLint ;
typedef TYPE_2__ GLcontext ;


 int ALPHABUF_BIT ;
 int PB_SIZE ;
 int do_blend (TYPE_2__*,int ,int *,int *,int *,int *,int *,int *,int *,int *,int *) ;
 int gl_read_alpha_pixels (TYPE_2__*,int ,int const*,int const*,int *,int *) ;
 int stub1 (TYPE_2__*,int ,int const*,int const*,int *,int *,int *,int *,int *) ;

void gl_blend_pixels( GLcontext* ctx,
                      GLuint n, const GLint x[], const GLint y[],
        GLubyte red[], GLubyte green[],
        GLubyte blue[], GLubyte alpha[],
        GLubyte mask[] )
{
   GLubyte rdest[PB_SIZE], gdest[PB_SIZE], bdest[PB_SIZE], adest[PB_SIZE];


   (*ctx->Driver.ReadColorPixels)( ctx, n, x, y, rdest, gdest, bdest, adest, mask );
   if (ctx->RasterMask & ALPHABUF_BIT) {
      gl_read_alpha_pixels( ctx, n, x, y, adest, mask );
   }

   do_blend( ctx, n, mask, red, green, blue, alpha, rdest, gdest, bdest, adest );
}
