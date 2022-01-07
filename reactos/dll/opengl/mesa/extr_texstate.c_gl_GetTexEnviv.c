
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * EnvColor; int EnvMode; } ;
struct TYPE_6__ {TYPE_1__ Texture; } ;
typedef int GLint ;
typedef scalar_t__ GLenum ;
typedef TYPE_2__ GLcontext ;


 int FLOAT_TO_INT (int ) ;
 int GL_INVALID_ENUM ;
 scalar_t__ GL_TEXTURE_ENV ;


 int gl_error (TYPE_2__*,int ,char*) ;

void gl_GetTexEnviv( GLcontext *ctx,
                     GLenum target, GLenum pname, GLint *params )
{
   if (target!=GL_TEXTURE_ENV) {
      gl_error( ctx, GL_INVALID_ENUM, "glGetTexEnvfv(target)" );
      return;
   }
   switch (pname) {
      case 128:
         *params = (GLint) ctx->Texture.EnvMode;
  break;
      case 129:
  params[0] = FLOAT_TO_INT( ctx->Texture.EnvColor[0] );
  params[1] = FLOAT_TO_INT( ctx->Texture.EnvColor[1] );
  params[2] = FLOAT_TO_INT( ctx->Texture.EnvColor[2] );
  params[3] = FLOAT_TO_INT( ctx->Texture.EnvColor[3] );
  break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glGetTexEnvfv(pname)" );
   }
}
