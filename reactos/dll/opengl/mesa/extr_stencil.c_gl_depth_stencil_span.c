
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int ZPassFunc; int ZFailFunc; } ;
struct TYPE_9__ {int (* DepthTestSpan ) (TYPE_4__*,size_t,int ,int ,int const*,int*) ;} ;
struct TYPE_8__ {scalar_t__ Test; } ;
struct TYPE_11__ {TYPE_3__ Stencil; TYPE_2__ Driver; TYPE_1__ Depth; } ;
typedef size_t GLuint ;
typedef int GLubyte ;
typedef int GLint ;
typedef int GLdepth ;
typedef TYPE_4__ GLcontext ;


 scalar_t__ GL_FALSE ;
 int MAX_WIDTH ;
 int apply_stencil_op_to_span (TYPE_4__*,size_t,int ,int ,int ,int*) ;
 int stub1 (TYPE_4__*,size_t,int ,int ,int const*,int*) ;

void gl_depth_stencil_span( GLcontext *ctx,
                            GLuint n, GLint x, GLint y, const GLdepth z[],
       GLubyte mask[] )
{
   if (ctx->Depth.Test==GL_FALSE) {



      apply_stencil_op_to_span( ctx, n, x, y, ctx->Stencil.ZPassFunc, mask );
   }
   else {



      GLubyte passmask[MAX_WIDTH], failmask[MAX_WIDTH], oldmask[MAX_WIDTH];
      GLuint i;


      for (i=0;i<n;i++) {
  passmask[i] = failmask[i] = 0;
         oldmask[i] = mask[i];
      }


      if (ctx->Driver.DepthTestSpan)
         (*ctx->Driver.DepthTestSpan)( ctx, n, x, y, z, mask );


      for (i=0;i<n;i++) {
         if (oldmask[i]) {
            if (mask[i]) {
               passmask[i] = 1;
            }
            else {
               failmask[i] = 1;
            }
         }
      }


      apply_stencil_op_to_span( ctx, n, x, y, ctx->Stencil.ZFailFunc, failmask );
      apply_stencil_op_to_span( ctx, n, x, y, ctx->Stencil.ZPassFunc, passmask );
   }
}
