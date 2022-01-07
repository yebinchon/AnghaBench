
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {void* ZoomY; void* ZoomX; } ;
struct TYPE_8__ {TYPE_1__ Pixel; } ;
typedef void* GLfloat ;
typedef TYPE_2__ GLcontext ;


 int GL_INVALID_OPERATION ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int gl_error (TYPE_2__*,int ,char*) ;
 int update_drawpixels_state (TYPE_2__*) ;

void gl_PixelZoom( GLcontext *ctx, GLfloat xfactor, GLfloat yfactor )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glPixelZoom" );
      return;
   }
   ctx->Pixel.ZoomX = xfactor;
   ctx->Pixel.ZoomY = yfactor;
   update_drawpixels_state( ctx );
}
