
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct gl_texture_object {int PaletteIntFormat; int PaletteSize; } ;
struct TYPE_6__ {struct gl_texture_object* Current2D; struct gl_texture_object* Current1D; } ;
struct TYPE_7__ {TYPE_1__ Texture; } ;
typedef int GLint ;
typedef int GLenum ;
typedef TYPE_2__ GLcontext ;
 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;


 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int gl_error (TYPE_2__*,int ,char*) ;

void gl_GetColorTableParameteriv( GLcontext *ctx, GLenum target,
                                  GLenum pname, GLint *params )
{
   struct gl_texture_object *texObj;

   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glGetColorTableParameter" );
      return;
   }

   switch (target) {
      case 129:
         texObj = ctx->Texture.Current1D;
         break;
      case 128:
         texObj = ctx->Texture.Current2D;
         break;
      default:
         gl_error(ctx, GL_INVALID_ENUM, "glGetColorTableParameter(target)");
         return;
   }

   switch (pname) {
      case 135:
         if (texObj)
            *params = texObj->PaletteIntFormat;
         break;
      case 130:
         if (texObj)
            *params = texObj->PaletteSize;
         break;
      case 131:
         *params = 8;
         break;
      case 134:
         *params = 8;
         break;
      case 136:
         *params = 8;
         break;
      case 137:
         *params = 8;
         break;
      case 132:
         *params = 8;
         break;
      case 133:
         *params = 8;
         break;
      default:
         gl_error(ctx, GL_INVALID_ENUM, "glGetColorTableParameter" );
         return;
   }
}
