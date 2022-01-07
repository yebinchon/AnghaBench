
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int* ByteColor; scalar_t__* RasterPos; int TexCoord; int Index; int RasterPosValid; } ;
struct TYPE_17__ {scalar_t__ RenderMode; TYPE_2__ Current; TYPE_1__* Visual; scalar_t__ NewState; } ;
struct TYPE_15__ {int InvRedScale; int InvGreenScale; int InvBlueScale; int InvAlphaScale; scalar_t__ RGBAflag; } ;
typedef scalar_t__ GLsizei ;
typedef scalar_t__ GLint ;
typedef int GLfloat ;
typedef scalar_t__ GLenum ;
typedef TYPE_3__ GLcontext ;


 int FEEDBACK_TOKEN (TYPE_3__*,int) ;
 scalar_t__ GL_COLOR ;
 scalar_t__ GL_COPY_PIXEL_TOKEN ;
 scalar_t__ GL_DEPTH ;
 scalar_t__ GL_FEEDBACK ;
 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;
 int GL_INVALID_VALUE ;
 scalar_t__ GL_RENDER ;
 scalar_t__ GL_SELECT ;
 scalar_t__ GL_STENCIL ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_3__*) ;
 int copy_ci_pixels (TYPE_3__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int copy_depth_pixels (TYPE_3__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int copy_rgb_pixels (TYPE_3__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int copy_stencil_pixels (TYPE_3__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int gl_error (TYPE_3__*,int ,char*) ;
 int gl_feedback_vertex (TYPE_3__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int*,int ,int ) ;
 int gl_update_hitflag (TYPE_3__*,scalar_t__) ;
 int gl_update_state (TYPE_3__*) ;

void gl_CopyPixels( GLcontext* ctx, GLint srcx, GLint srcy, GLsizei width, GLsizei height,
      GLenum type )
{
   GLint destx, desty;

   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glCopyPixels" );
      return;
   }

   if (width<0 || height<0) {
      gl_error( ctx, GL_INVALID_VALUE, "glCopyPixels" );
      return;
   }

   if (ctx->NewState) {
      gl_update_state(ctx);
   }

   if (ctx->RenderMode==GL_RENDER) {

      if (!ctx->Current.RasterPosValid) {
  return;
      }
      destx = (GLint) (ctx->Current.RasterPos[0] + 0.5F);
      desty = (GLint) (ctx->Current.RasterPos[1] + 0.5F);

      if (type==GL_COLOR && ctx->Visual->RGBAflag) {
         copy_rgb_pixels( ctx, srcx, srcy, width, height, destx, desty );
      }
      else if (type==GL_COLOR && !ctx->Visual->RGBAflag) {
         copy_ci_pixels( ctx, srcx, srcy, width, height, destx, desty );
      }
      else if (type==GL_DEPTH) {
         copy_depth_pixels( ctx, srcx, srcy, width, height, destx, desty );
      }
      else if (type==GL_STENCIL) {
         copy_stencil_pixels( ctx, srcx, srcy, width, height, destx, desty );
      }
      else {
  gl_error( ctx, GL_INVALID_ENUM, "glCopyPixels" );
      }
   }
   else if (ctx->RenderMode==GL_FEEDBACK) {
      GLfloat color[4];
      color[0] = ctx->Current.ByteColor[0] * ctx->Visual->InvRedScale;
      color[1] = ctx->Current.ByteColor[1] * ctx->Visual->InvGreenScale;
      color[2] = ctx->Current.ByteColor[2] * ctx->Visual->InvBlueScale;
      color[3] = ctx->Current.ByteColor[3] * ctx->Visual->InvAlphaScale;
      FEEDBACK_TOKEN( ctx, (GLfloat) (GLint) GL_COPY_PIXEL_TOKEN );
      gl_feedback_vertex( ctx, ctx->Current.RasterPos[0],
     ctx->Current.RasterPos[1],
     ctx->Current.RasterPos[2],
     ctx->Current.RasterPos[3],
     color, ctx->Current.Index,
     ctx->Current.TexCoord );
   }
   else if (ctx->RenderMode==GL_SELECT) {
      gl_update_hitflag( ctx, ctx->Current.RasterPos[2] );
   }

}
