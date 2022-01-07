
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Mode; double Density; double Start; double End; double Index; double* Color; } ;
struct TYPE_6__ {TYPE_1__ Fog; } ;
typedef int GLint ;
typedef double GLfloat ;
typedef int GLenum ;
typedef TYPE_2__ GLcontext ;


 int GL_EXP ;
 int GL_EXP2 ;






 int GL_INVALID_ENUM ;
 int GL_INVALID_VALUE ;
 int GL_LINEAR ;
 int gl_error (TYPE_2__*,int ,char*) ;

void gl_Fogfv( GLcontext *ctx, GLenum pname, const GLfloat *params )
{
   GLenum m;

   switch (pname) {
      case 129:
         m = (GLenum) (GLint) *params;
  if (m==GL_LINEAR || m==GL_EXP || m==GL_EXP2) {
     ctx->Fog.Mode = m;
  }
  else {
     gl_error( ctx, GL_INVALID_ENUM, "glFog" );
  }
  break;
      case 132:
  if (*params<0.0) {
     gl_error( ctx, GL_INVALID_VALUE, "glFog" );
  }
  else {
     ctx->Fog.Density = *params;
  }
  break;
      case 128:

         if (*params<0.0F) {
            gl_error( ctx, GL_INVALID_VALUE, "glFog(GL_FOG_START)" );
            return;
         }

  ctx->Fog.Start = *params;
  break;
      case 131:

         if (*params<0.0F) {
            gl_error( ctx, GL_INVALID_VALUE, "glFog(GL_FOG_END)" );
            return;
         }

  ctx->Fog.End = *params;
  break;
      case 130:
  ctx->Fog.Index = *params;
  break;
      case 133:
  ctx->Fog.Color[0] = params[0];
  ctx->Fog.Color[1] = params[1];
  ctx->Fog.Color[2] = params[2];
  ctx->Fog.Color[3] = params[3];
         break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glFog" );
   }
}
