
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__** ClipEquation; } ;
struct TYPE_7__ {TYPE_1__ Transform; } ;
typedef size_t GLint ;
typedef scalar_t__ GLenum ;
typedef scalar_t__ GLdouble ;
typedef TYPE_2__ GLcontext ;


 scalar_t__ GL_CLIP_PLANE0 ;
 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 size_t MAX_CLIP_PLANES ;
 int gl_error (TYPE_2__*,int ,char*) ;

void gl_GetClipPlane( GLcontext* ctx, GLenum plane, GLdouble *equation )
{
   GLint p;

   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glGetClipPlane" );
      return;
   }

   p = (GLint) (plane - GL_CLIP_PLANE0);
   if (p<0 || p>=MAX_CLIP_PLANES) {
      gl_error( ctx, GL_INVALID_ENUM, "glGetClipPlane" );
      return;
   }

   equation[0] = (GLdouble) ctx->Transform.ClipEquation[p][0];
   equation[1] = (GLdouble) ctx->Transform.ClipEquation[p][1];
   equation[2] = (GLdouble) ctx->Transform.ClipEquation[p][2];
   equation[3] = (GLdouble) ctx->Transform.ClipEquation[p][3];
}
