
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* Current2D; TYPE_1__* Current1D; } ;
struct TYPE_10__ {TYPE_3__ Texture; } ;
struct TYPE_8__ {double* BorderColor; int Priority; int WrapT; int WrapS; int MinFilter; int MagFilter; } ;
struct TYPE_7__ {double* BorderColor; int Priority; int WrapT; int WrapS; int MinFilter; int MagFilter; } ;
typedef int GLint ;
typedef double GLfloat ;
typedef int GLenum ;
typedef TYPE_4__ GLcontext ;


 int FLOAT_TO_INT (double) ;
 int GL_INVALID_ENUM ;
 int GL_TRUE ;
 int gl_error (TYPE_4__*,int ,char*) ;

void gl_GetTexParameteriv( GLcontext *ctx,
                           GLenum target, GLenum pname, GLint *params )
{
   switch (target) {
      case 136:
         switch (pname) {
     case 133:
        *params = (GLint) ctx->Texture.Current1D->MagFilter;
        break;
     case 132:
        *params = (GLint) ctx->Texture.Current1D->MinFilter;
        break;
     case 129:
        *params = (GLint) ctx->Texture.Current1D->WrapS;
        break;
     case 128:
        *params = (GLint) ctx->Texture.Current1D->WrapT;
        break;
     case 134:
               {
                  GLfloat color[4];
                  color[0] = ctx->Texture.Current1D->BorderColor[0]/255.0;
                  color[1] = ctx->Texture.Current1D->BorderColor[1]/255.0;
                  color[2] = ctx->Texture.Current1D->BorderColor[2]/255.0;
                  color[3] = ctx->Texture.Current1D->BorderColor[3]/255.0;
                  params[0] = FLOAT_TO_INT( color[0] );
                  params[1] = FLOAT_TO_INT( color[1] );
                  params[2] = FLOAT_TO_INT( color[2] );
                  params[3] = FLOAT_TO_INT( color[3] );
               }
        break;
     case 130:
               *params = (GLint) GL_TRUE;
        break;
     case 131:
               *params = (GLint) ctx->Texture.Current1D->Priority;
        break;
     default:
        gl_error( ctx, GL_INVALID_ENUM, "glGetTexParameteriv(pname)" );
  }
         break;
      case 135:
         switch (pname) {
     case 133:
        *params = (GLint) ctx->Texture.Current2D->MagFilter;
        break;
     case 132:
        *params = (GLint) ctx->Texture.Current2D->MinFilter;
        break;
     case 129:
        *params = (GLint) ctx->Texture.Current2D->WrapS;
        break;
     case 128:
        *params = (GLint) ctx->Texture.Current2D->WrapT;
        break;
     case 134:
               {
                  GLfloat color[4];
                  color[0] = ctx->Texture.Current2D->BorderColor[0]/255.0;
                  color[1] = ctx->Texture.Current2D->BorderColor[1]/255.0;
                  color[2] = ctx->Texture.Current2D->BorderColor[2]/255.0;
                  color[3] = ctx->Texture.Current2D->BorderColor[3]/255.0;
                  params[0] = FLOAT_TO_INT( color[0] );
                  params[1] = FLOAT_TO_INT( color[1] );
                  params[2] = FLOAT_TO_INT( color[2] );
                  params[3] = FLOAT_TO_INT( color[3] );
               }
        break;
     case 130:
               *params = (GLint) GL_TRUE;
        break;
     case 131:
               *params = (GLint) ctx->Texture.Current2D->Priority;
        break;
     default:
        gl_error( ctx, GL_INVALID_ENUM, "glGetTexParameteriv(pname)" );
  }
  break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glGetTexParameteriv(target)" );
   }
}
