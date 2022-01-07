
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int EnvColor; int EnvMode; } ;
struct TYPE_6__ {TYPE_1__ Texture; } ;
typedef int GLfloat ;
typedef scalar_t__ GLenum ;
typedef TYPE_2__ GLcontext ;


 int COPY_4V (int *,int ) ;
 int ENUM_TO_FLOAT (int ) ;
 int GL_INVALID_ENUM ;
 scalar_t__ GL_TEXTURE_ENV ;


 int gl_error (TYPE_2__*,int ,char*) ;

void gl_GetTexEnvfv( GLcontext *ctx,
                     GLenum target, GLenum pname, GLfloat *params )
{
   if (target!=GL_TEXTURE_ENV) {
      gl_error( ctx, GL_INVALID_ENUM, "glGetTexEnvfv(target)" );
      return;
   }
   switch (pname) {
      case 128:
         *params = ENUM_TO_FLOAT(ctx->Texture.EnvMode);
  break;
      case 129:
  COPY_4V( params, ctx->Texture.EnvColor );
  break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glGetTexEnvfv(pname)" );
   }
}
