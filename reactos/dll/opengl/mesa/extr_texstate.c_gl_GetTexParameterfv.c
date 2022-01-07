
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
struct TYPE_8__ {float* BorderColor; float Priority; int WrapT; int WrapS; int MinFilter; int MagFilter; } ;
struct TYPE_7__ {float* BorderColor; float Priority; int WrapT; int WrapS; int MinFilter; int MagFilter; } ;
typedef float GLfloat ;
typedef int GLenum ;
typedef TYPE_4__ GLcontext ;


 float ENUM_TO_FLOAT (int ) ;
 int GL_INVALID_ENUM ;
 int GL_TRUE ;
 int gl_error (TYPE_4__*,int ,char*) ;

void gl_GetTexParameterfv( GLcontext *ctx,
                           GLenum target, GLenum pname, GLfloat *params )
{
   switch (target) {
      case 136:
         switch (pname) {
     case 133:
        *params = ENUM_TO_FLOAT(ctx->Texture.Current1D->MagFilter);
        break;
     case 132:
        *params = ENUM_TO_FLOAT(ctx->Texture.Current1D->MinFilter);
        break;
     case 129:
        *params = ENUM_TO_FLOAT(ctx->Texture.Current1D->WrapS);
        break;
     case 128:
        *params = ENUM_TO_FLOAT(ctx->Texture.Current1D->WrapT);
        break;
     case 134:
               params[0] = ctx->Texture.Current1D->BorderColor[0] / 255.0f;
               params[1] = ctx->Texture.Current1D->BorderColor[1] / 255.0f;
               params[2] = ctx->Texture.Current1D->BorderColor[2] / 255.0f;
               params[3] = ctx->Texture.Current1D->BorderColor[3] / 255.0f;
        break;
     case 130:
               *params = ENUM_TO_FLOAT(GL_TRUE);
        break;
            case 131:
               *params = ctx->Texture.Current1D->Priority;
        break;
     default:
        gl_error( ctx, GL_INVALID_ENUM, "glGetTexParameterfv(pname)" );
  }
         break;
      case 135:
         switch (pname) {
     case 133:
        *params = ENUM_TO_FLOAT(ctx->Texture.Current2D->MagFilter);
        break;
     case 132:
        *params = ENUM_TO_FLOAT(ctx->Texture.Current2D->MinFilter);
        break;
     case 129:
        *params = ENUM_TO_FLOAT(ctx->Texture.Current2D->WrapS);
        break;
     case 128:
        *params = ENUM_TO_FLOAT(ctx->Texture.Current2D->WrapT);
        break;
     case 134:
               params[0] = ctx->Texture.Current2D->BorderColor[0] / 255.0f;
               params[1] = ctx->Texture.Current2D->BorderColor[1] / 255.0f;
               params[2] = ctx->Texture.Current2D->BorderColor[2] / 255.0f;
               params[3] = ctx->Texture.Current2D->BorderColor[3] / 255.0f;
               break;
     case 130:
               *params = ENUM_TO_FLOAT(GL_TRUE);
        break;
     case 131:
               *params = ctx->Texture.Current2D->Priority;
        break;
     default:
        gl_error( ctx, GL_INVALID_ENUM, "glGetTexParameterfv(pname)" );
  }
  break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glGetTexParameterfv(target)" );
   }
}
