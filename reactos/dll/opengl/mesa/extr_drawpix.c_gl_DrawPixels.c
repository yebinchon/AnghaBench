
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ (* DrawPixels ) (TYPE_3__*,int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int const*) ;} ;
struct TYPE_12__ {scalar_t__* RasterPos; } ;
struct TYPE_14__ {scalar_t__ RenderMode; scalar_t__ RasterMask; scalar_t__ CallDepth; scalar_t__ CompileFlag; scalar_t__ ExecuteFlag; scalar_t__ FastDrawPixels; TYPE_2__ Driver; TYPE_1__ Current; scalar_t__ NewState; } ;
typedef int const GLvoid ;
typedef scalar_t__ GLsizei ;
typedef int GLint ;
typedef scalar_t__ GLenum ;
typedef TYPE_3__ GLcontext ;


 int GL_FALSE ;
 int GL_INVALID_VALUE ;
 int GL_OUT_OF_MEMORY ;
 scalar_t__ GL_RENDER ;
 scalar_t__ GL_RGB ;
 scalar_t__ GL_UNSIGNED_BYTE ;
 int drawpixels (TYPE_3__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int const*) ;
 int free (int const*) ;
 int gl_error (TYPE_3__*,int ,char*) ;
 int gl_save_DrawPixels (TYPE_3__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int const*) ;
 int const* gl_unpack_pixels (TYPE_3__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int const*) ;
 int gl_update_state (TYPE_3__*) ;
 scalar_t__ quickdraw_rgb (TYPE_3__*,scalar_t__,scalar_t__,int const*) ;
 scalar_t__ stub1 (TYPE_3__*,int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int const*) ;

void gl_DrawPixels( GLcontext* ctx, GLsizei width, GLsizei height,
                    GLenum format, GLenum type, const GLvoid *pixels )
{
   GLvoid *image;

   if (width<0 || height<0) {
      gl_error( ctx, GL_INVALID_VALUE, "glDrawPixels" );
      return;
   }

   if (ctx->NewState) {
      gl_update_state(ctx);
   }


   if (!ctx->CompileFlag && ctx->Driver.DrawPixels) {
      GLint x = (GLint) (ctx->Current.RasterPos[0] + 0.5F);
      GLint y = (GLint) (ctx->Current.RasterPos[1] + 0.5F);
      if ((*ctx->Driver.DrawPixels)( ctx, x, y, width, height,
                                      format, type, GL_FALSE, pixels )) {

         return;
      }
   }

   if (format==GL_RGB && type==GL_UNSIGNED_BYTE && ctx->FastDrawPixels
       && !ctx->CompileFlag && ctx->RenderMode==GL_RENDER
       && ctx->RasterMask==0 && ctx->CallDepth==0) {

      if (quickdraw_rgb( ctx, width, height, pixels )) {

         return;
      }
   }






   if (ctx->CallDepth == 0) {
      image = gl_unpack_pixels( ctx, width, height, format, type, pixels );
      if (!image) {
         gl_error( ctx, GL_OUT_OF_MEMORY, "glDrawPixels" );
         return;
      }
   }
   else {
      image = (GLvoid *) pixels;
   }

   if (ctx->CompileFlag) {
      gl_save_DrawPixels( ctx, width, height, format, type, image );
   }
   if (ctx->ExecuteFlag) {
      drawpixels( ctx, width, height, format, type, image );
      if (!ctx->CompileFlag) {

         if (image!=pixels)
            free( image );
      }
   }
}
