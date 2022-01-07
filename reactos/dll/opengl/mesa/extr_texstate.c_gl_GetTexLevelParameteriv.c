
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct gl_texture_image {scalar_t__ Width; scalar_t__ Format; scalar_t__ Border; scalar_t__ Height; } ;
struct TYPE_13__ {TYPE_4__* Proxy2D; TYPE_3__* Proxy1D; TYPE_2__* Current2D; TYPE_1__* Current1D; } ;
struct TYPE_14__ {TYPE_5__ Texture; } ;
struct TYPE_12__ {struct gl_texture_image** Image; } ;
struct TYPE_11__ {struct gl_texture_image** Image; } ;
struct TYPE_10__ {struct gl_texture_image** Image; } ;
struct TYPE_9__ {struct gl_texture_image** Image; } ;
typedef scalar_t__ GLint ;
typedef int GLenum ;
typedef TYPE_6__ GLcontext ;


 int GL_INVALID_ENUM ;
 int GL_INVALID_VALUE ;
 scalar_t__ MAX_TEXTURE_LEVELS ;
 int gl_error (TYPE_6__*,int ,char*) ;

void gl_GetTexLevelParameteriv( GLcontext *ctx, GLenum target, GLint level,
                                GLenum pname, GLint *params )
{
   struct gl_texture_image *tex;

   if (level<0 || level>=MAX_TEXTURE_LEVELS) {
      gl_error( ctx, GL_INVALID_VALUE, "glGetTexLevelParameter[if]v" );
      return;
   }

   switch (target) {
      case 140:
         tex = ctx->Texture.Current1D->Image[level];
         switch (pname) {
     case 128:
        *params = tex->Width;
        break;
     case 135:
        *params = tex->Format;
        break;
     case 136:
        *params = tex->Border;
        break;
            case 129:
            case 134:
            case 137:
            case 138:
            case 131:
            case 130:
               *params = 8;
               break;
            case 132:
               *params = 8;
               break;
     default:
        gl_error( ctx, GL_INVALID_ENUM,
                         "glGetTexLevelParameter[if]v(pname)" );
  }
  break;
      case 139:
         tex = ctx->Texture.Current2D->Image[level];
  switch (pname) {
     case 128:
        *params = tex->Width;
        break;
     case 133:
        *params = tex->Height;
        break;
     case 135:
        *params = tex->Format;
        break;
     case 136:
        *params = tex->Border;
        break;
            case 129:
            case 134:
            case 137:
            case 138:
            case 131:
            case 130:
               *params = 8;
               break;
            case 132:
               *params = 8;
               break;
     default:
        gl_error( ctx, GL_INVALID_ENUM,
                         "glGetTexLevelParameter[if]v(pname)" );
  }
  break;
      case 142:
         tex = ctx->Texture.Proxy1D->Image[level];
         switch (pname) {
     case 128:
        *params = tex->Width;
        break;
     case 135:
        *params = tex->Format;
        break;
     case 136:
        *params = tex->Border;
        break;
            case 129:
            case 134:
            case 137:
            case 138:
            case 131:
            case 130:
               *params = 8;
               break;
            case 132:
               *params = 8;
               break;
     default:
        gl_error( ctx, GL_INVALID_ENUM,
                         "glGetTexLevelParameter[if]v(pname)" );
  }
  break;
      case 141:
         tex = ctx->Texture.Proxy2D->Image[level];
  switch (pname) {
     case 128:
        *params = tex->Width;
        break;
     case 133:
        *params = tex->Height;
        break;
     case 135:
        *params = tex->Format;
        break;
     case 136:
        *params = tex->Border;
        break;
            case 129:
            case 134:
            case 137:
            case 138:
            case 131:
            case 130:
               *params = 8;
               break;
            case 132:
               *params = 8;
               break;
     default:
        gl_error( ctx, GL_INVALID_ENUM,
                         "glGetTexLevelParameter[if]v(pname)" );
  }
  break;
     default:
  gl_error(ctx, GL_INVALID_ENUM, "glGetTexLevelParameter[if]v(target)");
   }
}
