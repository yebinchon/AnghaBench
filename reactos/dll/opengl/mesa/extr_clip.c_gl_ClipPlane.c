
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * ClipEquation; } ;
struct TYPE_7__ {int ModelViewInv; TYPE_1__ Transform; scalar_t__ NewModelViewMatrix; } ;
typedef size_t GLint ;
typedef int GLfloat ;
typedef scalar_t__ GLenum ;
typedef TYPE_2__ GLcontext ;


 scalar_t__ GL_CLIP_PLANE0 ;
 int GL_INVALID_ENUM ;
 size_t MAX_CLIP_PLANES ;
 int gl_analyze_modelview_matrix (TYPE_2__*) ;
 int gl_error (TYPE_2__*,int ,char*) ;
 int gl_transform_vector (int ,int const*,int ) ;

void gl_ClipPlane( GLcontext* ctx, GLenum plane, const GLfloat *equation )
{
   GLint p;

   p = (GLint) plane - (GLint) GL_CLIP_PLANE0;
   if (p<0 || p>=MAX_CLIP_PLANES) {
      gl_error( ctx, GL_INVALID_ENUM, "glClipPlane" );
      return;
   }





   if (ctx->NewModelViewMatrix) {
      gl_analyze_modelview_matrix(ctx);
   }
   gl_transform_vector( ctx->Transform.ClipEquation[p], equation,
          ctx->ModelViewInv );
}
