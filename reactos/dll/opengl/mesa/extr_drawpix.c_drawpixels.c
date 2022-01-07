
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {float* ByteColor; float* TexCoord; int * RasterPos; scalar_t__ RasterPosValid; int Index; } ;
struct TYPE_16__ {scalar_t__ RenderMode; TYPE_2__ Current; TYPE_1__* Visual; } ;
struct TYPE_14__ {float InvRedScale; float InvGreenScale; float InvBlueScale; float InvAlphaScale; } ;
typedef int GLvoid ;
typedef int GLsizei ;
typedef scalar_t__ GLint ;
typedef float GLfloat ;
typedef int GLenum ;
typedef TYPE_3__ GLcontext ;


 int FEEDBACK_TOKEN (TYPE_3__*,float) ;






 scalar_t__ GL_DRAW_PIXEL_TOKEN ;
 scalar_t__ GL_FEEDBACK ;

 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;



 scalar_t__ GL_RENDER ;


 scalar_t__ GL_SELECT ;

 scalar_t__ INSIDE_BEGIN_END (TYPE_3__*) ;
 int draw_color_pixels (TYPE_3__*,int ,int ,int,int,int const*) ;
 int draw_depth_pixels (TYPE_3__*,int ,int ,int,int const*) ;
 int draw_index_pixels (TYPE_3__*,int ,int ,int,int const*) ;
 int draw_stencil_pixels (TYPE_3__*,int ,int ,int,int const*) ;
 int gl_error (TYPE_3__*,int ,char*) ;
 int gl_feedback_vertex (TYPE_3__*,int ,int ,int ,int ,float*,int ,float*) ;
 int gl_update_hitflag (TYPE_3__*,int ) ;

__attribute__((used)) static void drawpixels( GLcontext* ctx, GLsizei width, GLsizei height,
                        GLenum format, GLenum type, const GLvoid *pixels )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glDrawPixels" );
      return;
   }

   if (ctx->RenderMode==GL_RENDER) {
      if (!ctx->Current.RasterPosValid) {
  return;
      }
      switch (format) {
  case 136:
            draw_index_pixels( ctx, width, height, type, pixels );
     break;
  case 128:
     draw_stencil_pixels( ctx, width, height, type, pixels );
     break;
  case 135:
     draw_depth_pixels( ctx, width, height, type, pixels );
     break;
  case 131:
  case 134:
  case 137:
  case 140:
  case 130:
  case 138:
  case 133:
  case 132:
  case 129:
  case 139:
            draw_color_pixels( ctx, width, height, format, type, pixels );
     break;
  default:
     gl_error( ctx, GL_INVALID_ENUM, "glDrawPixels" );
      }
   }
   else if (ctx->RenderMode==GL_FEEDBACK) {
      if (ctx->Current.RasterPosValid) {
         GLfloat color[4], texcoord[4], invq;
         color[0] = ctx->Current.ByteColor[0] * ctx->Visual->InvRedScale;
         color[1] = ctx->Current.ByteColor[1] * ctx->Visual->InvGreenScale;
         color[2] = ctx->Current.ByteColor[2] * ctx->Visual->InvBlueScale;
         color[3] = ctx->Current.ByteColor[3] * ctx->Visual->InvAlphaScale;
         invq = 1.0F / ctx->Current.TexCoord[3];
         texcoord[0] = ctx->Current.TexCoord[0] * invq;
         texcoord[1] = ctx->Current.TexCoord[1] * invq;
         texcoord[2] = ctx->Current.TexCoord[2] * invq;
         texcoord[3] = ctx->Current.TexCoord[3];
         FEEDBACK_TOKEN( ctx, (GLfloat) (GLint) GL_DRAW_PIXEL_TOKEN );
         gl_feedback_vertex( ctx, ctx->Current.RasterPos[0],
                             ctx->Current.RasterPos[1],
                             ctx->Current.RasterPos[2],
                             ctx->Current.RasterPos[3],
                             color, ctx->Current.Index, texcoord );
      }
   }
   else if (ctx->RenderMode==GL_SELECT) {
      if (ctx->Current.RasterPosValid) {
         gl_update_hitflag( ctx, ctx->Current.RasterPos[2] );
      }
   }
}
