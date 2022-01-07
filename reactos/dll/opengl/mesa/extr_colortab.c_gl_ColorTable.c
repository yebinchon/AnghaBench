
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct gl_texture_object {int PaletteSize; int PaletteIntFormat; int Palette; scalar_t__ PaletteFormat; } ;
struct gl_image {int Width; int Components; int Data; } ;
struct TYPE_9__ {int (* UpdateTexturePalette ) (TYPE_3__*,struct gl_texture_object*) ;} ;
struct TYPE_8__ {struct gl_texture_object* Proxy2D; struct gl_texture_object* Proxy1D; struct gl_texture_object* Current2D; struct gl_texture_object* Current1D; } ;
struct TYPE_10__ {TYPE_2__ Driver; TYPE_1__ Texture; } ;
typedef int GLenum ;
typedef TYPE_3__ GLcontext ;
typedef scalar_t__ GLboolean ;


 scalar_t__ GL_FALSE ;
 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;
 int GL_INVALID_VALUE ;




 scalar_t__ GL_TRUE ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_3__*) ;
 int MAX_TEXTURE_PALETTE_SIZE ;
 int MEMCPY (int ,int ,int) ;
 scalar_t__ decode_internal_format (int) ;
 int gl_error (TYPE_3__*,int ,char*) ;
 int power_of_two (int) ;
 int stub1 (TYPE_3__*,struct gl_texture_object*) ;

void gl_ColorTable( GLcontext *ctx, GLenum target,
                    GLenum internalFormat, struct gl_image *table )
{
   struct gl_texture_object *texObj;
   GLboolean proxy = GL_FALSE;

   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glGetBooleanv" );
      return;
   }

   switch (target) {
      case 129:
         texObj = ctx->Texture.Current1D;
         break;
      case 128:
         texObj = ctx->Texture.Current2D;
         break;
      case 131:
         texObj = ctx->Texture.Proxy1D;
         proxy = GL_TRUE;
         break;
      case 130:
         texObj = ctx->Texture.Proxy2D;
         proxy = GL_TRUE;
         break;
      default:
         gl_error(ctx, GL_INVALID_ENUM, "glColorTableEXT(target)");
         return;
   }



   if (table->Width < 1 || table->Width > MAX_TEXTURE_PALETTE_SIZE
       || !power_of_two(table->Width)) {
      gl_error(ctx, GL_INVALID_VALUE, "glColorTableEXT(width)");
      if (proxy) {
         texObj->PaletteSize = 0;
         texObj->PaletteIntFormat = 0;
         texObj->PaletteFormat = 0;
      }
      return;
   }


  texObj->PaletteSize = table->Width;
  texObj->PaletteIntFormat = internalFormat;
  texObj->PaletteFormat = decode_internal_format(internalFormat);
  if (!proxy) {
     MEMCPY(texObj->Palette, table->Data, table->Width*table->Components);
     if (ctx->Driver.UpdateTexturePalette) {
        (*ctx->Driver.UpdateTexturePalette)( ctx, texObj );
     }
   }
}
