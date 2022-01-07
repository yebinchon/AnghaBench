
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int (* TexEnv ) (TYPE_3__*,scalar_t__,scalar_t__ const*) ;} ;
struct TYPE_8__ {void** EnvColor; scalar_t__ EnvMode; } ;
struct TYPE_10__ {TYPE_2__ Driver; TYPE_1__ Texture; } ;
typedef int GLint ;
typedef scalar_t__ GLfloat ;
typedef scalar_t__ GLenum ;
typedef TYPE_3__ GLcontext ;


 void* CLAMP (scalar_t__ const,double,double) ;


 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;


 scalar_t__ GL_TEXTURE_ENV ;
 scalar_t__ GL_TEXTURE_ENV_COLOR ;
 scalar_t__ GL_TEXTURE_ENV_MODE ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_3__*) ;
 int gl_error (TYPE_3__*,int ,char*) ;
 int stub1 (TYPE_3__*,scalar_t__,scalar_t__ const*) ;

void gl_TexEnvfv( GLcontext *ctx,
                  GLenum target, GLenum pname, const GLfloat *param )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glTexEnv" );
      return;
   }

   if (target!=GL_TEXTURE_ENV) {
      gl_error( ctx, GL_INVALID_ENUM, "glTexEnv(target)" );
      return;
   }

   if (pname==GL_TEXTURE_ENV_MODE) {
      GLenum mode = (GLenum) (GLint) *param;
      switch (mode) {
  case 129:
  case 131:
  case 130:
  case 128:
     ctx->Texture.EnvMode = mode;
     break;
  default:
     gl_error( ctx, GL_INVALID_ENUM, "glTexEnv(param)" );
     return;
      }
   }
   else if (pname==GL_TEXTURE_ENV_COLOR) {
      ctx->Texture.EnvColor[0] = CLAMP( param[0], 0.0, 1.0 );
      ctx->Texture.EnvColor[1] = CLAMP( param[1], 0.0, 1.0 );
      ctx->Texture.EnvColor[2] = CLAMP( param[2], 0.0, 1.0 );
      ctx->Texture.EnvColor[3] = CLAMP( param[3], 0.0, 1.0 );
   }
   else {
      gl_error( ctx, GL_INVALID_ENUM, "glTexEnv(pname)" );
      return;
   }


   if (ctx->Driver.TexEnv) {
      (*ctx->Driver.TexEnv)( ctx, pname, param );
   }
}
