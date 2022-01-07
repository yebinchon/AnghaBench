
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct TYPE_31__ {scalar_t__ (* DepthTestSpan ) (TYPE_9__*,int,int ,int ,int *,int *) ;int (* SetBuffer ) (TYPE_9__*,int ) ;int (* WriteIndexSpan ) (TYPE_9__*,int,int ,int ,int*,int *) ;} ;
struct TYPE_30__ {scalar_t__ SWmasking; scalar_t__ SWLogicOpEnabled; } ;
struct TYPE_29__ {scalar_t__ Test; } ;
struct TYPE_28__ {scalar_t__ Enabled; } ;
struct TYPE_27__ {scalar_t__ StippleFlag; } ;
struct TYPE_26__ {scalar_t__ Enabled; } ;
struct TYPE_25__ {scalar_t__ Fog; } ;
struct TYPE_24__ {scalar_t__ Enabled; } ;
struct TYPE_32__ {int RasterMask; TYPE_8__ Driver; TYPE_7__ Color; TYPE_6__ Depth; TYPE_5__ Stencil; TYPE_4__ Polygon; TYPE_3__ Scissor; TYPE_2__ Hint; TYPE_1__ Fog; } ;
typedef int GLuint ;
typedef int GLubyte ;
typedef int GLint ;
typedef scalar_t__ GLenum ;
typedef int GLdepth ;
typedef TYPE_9__ GLcontext ;


 int FRONT_AND_BACK_BIT ;
 int GL_BACK ;
 scalar_t__ GL_BITMAP ;
 int GL_FRONT ;
 scalar_t__ GL_NICEST ;
 scalar_t__ GL_POLYGON ;
 int MAX_WIDTH ;
 int MEMCPY (int*,int*,int) ;
 int MEMSET (int *,int,int) ;
 int NO_DRAW_BIT ;
 int WINCLIP_BIT ;
 scalar_t__ clip_span (TYPE_9__*,int,int ,int ,int *) ;
 int gl_depth_stencil_span (TYPE_9__*,int,int ,int ,int *,int *) ;
 int gl_fog_index_pixels (TYPE_9__*,int,int *,int*) ;
 int gl_logicop_ci_span (TYPE_9__*,int,int ,int ,int*,int *) ;
 int gl_mask_index_span (TYPE_9__*,int,int ,int ,int*) ;
 scalar_t__ gl_scissor_span (TYPE_9__*,int,int ,int ,int *) ;
 scalar_t__ gl_stencil_span (TYPE_9__*,int,int ,int ,int *) ;
 int stipple_polygon_span (TYPE_9__*,int,int ,int ,int *) ;
 scalar_t__ stub1 (TYPE_9__*,int,int ,int ,int *,int *) ;
 int stub2 (TYPE_9__*,int,int ,int ,int*,int *) ;
 int stub3 (TYPE_9__*,int ) ;
 int stub4 (TYPE_9__*,int,int ,int ,int*,int *) ;
 int stub5 (TYPE_9__*,int ) ;

void gl_write_index_span( GLcontext *ctx,
                          GLuint n, GLint x, GLint y, GLdepth z[],
     GLuint index[], GLenum primitive )
{
   GLubyte mask[MAX_WIDTH];
   GLuint index_save[MAX_WIDTH];


   MEMSET(mask, 1, n);

   if ((ctx->RasterMask & WINCLIP_BIT) || primitive==GL_BITMAP) {
      if (clip_span(ctx,n,x,y,mask)==0) {
  return;
      }
   }


   if (ctx->Fog.Enabled
       && (ctx->Hint.Fog==GL_NICEST || primitive==GL_BITMAP)) {
      gl_fog_index_pixels( ctx, n, z, index );
   }


   if (ctx->Scissor.Enabled) {
      if (gl_scissor_span( ctx, n, x, y, mask )==0) {
  return;
      }
   }


   if (ctx->Polygon.StippleFlag && primitive==GL_POLYGON) {
      stipple_polygon_span( ctx, n, x, y, mask );
   }

   if (ctx->Stencil.Enabled) {

      if (gl_stencil_span( ctx, n, x, y, mask )==0) {
  return;
      }

      gl_depth_stencil_span( ctx, n, x, y, z, mask );
   }
   else if (ctx->Depth.Test) {

      if ((*ctx->Driver.DepthTestSpan)( ctx, n, x, y, z, mask )==0) return;
   }

   if (ctx->RasterMask & NO_DRAW_BIT) {

      return;
   }

   if (ctx->RasterMask & FRONT_AND_BACK_BIT) {



      MEMCPY( index_save, index, n * sizeof(GLuint) );
   }

   if (ctx->Color.SWLogicOpEnabled) {
      gl_logicop_ci_span( ctx, n, x, y, index, mask );
   }
   if (ctx->Color.SWmasking) {
      gl_mask_index_span( ctx, n, x, y, index );
   }


   (*ctx->Driver.WriteIndexSpan)( ctx, n, x, y, index, mask );


   if (ctx->RasterMask & FRONT_AND_BACK_BIT) {

      (*ctx->Driver.SetBuffer)( ctx, GL_BACK );
      MEMCPY( index, index_save, n * sizeof(GLuint) );
      if (ctx->Color.SWLogicOpEnabled) {
         gl_logicop_ci_span( ctx, n, x, y, index, mask );
      }
      if (ctx->Color.SWmasking) {
         gl_mask_index_span( ctx, n, x, y, index );
      }
      (*ctx->Driver.WriteIndexSpan)( ctx, n, x, y, index, mask );
      (*ctx->Driver.SetBuffer)( ctx, GL_FRONT );
   }
}
