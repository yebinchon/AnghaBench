#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct gl_texture_object {int PaletteSize; int PaletteIntFormat; int /*<<< orphan*/  Palette; scalar_t__ PaletteFormat; } ;
struct gl_image {int Width; int Components; int /*<<< orphan*/  Data; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* UpdateTexturePalette ) (TYPE_3__*,struct gl_texture_object*) ;} ;
struct TYPE_8__ {struct gl_texture_object* Proxy2D; struct gl_texture_object* Proxy1D; struct gl_texture_object* Current2D; struct gl_texture_object* Current1D; } ;
struct TYPE_10__ {TYPE_2__ Driver; TYPE_1__ Texture; } ;
typedef  int GLenum ;
typedef  TYPE_3__ GLcontext ;
typedef  scalar_t__ GLboolean ;

/* Variables and functions */
 scalar_t__ GL_FALSE ; 
 int /*<<< orphan*/  GL_INVALID_ENUM ; 
 int /*<<< orphan*/  GL_INVALID_OPERATION ; 
 int /*<<< orphan*/  GL_INVALID_VALUE ; 
#define  GL_PROXY_TEXTURE_1D 131 
#define  GL_PROXY_TEXTURE_2D 130 
#define  GL_TEXTURE_1D 129 
#define  GL_TEXTURE_2D 128 
 scalar_t__ GL_TRUE ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int MAX_TEXTURE_PALETTE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,struct gl_texture_object*) ; 

void FUNC6( GLcontext *ctx, GLenum target,
                    GLenum internalFormat, struct gl_image *table )
{
   struct gl_texture_object *texObj;
   GLboolean proxy = GL_FALSE;

   if (FUNC0(ctx)) {
      FUNC3( ctx, GL_INVALID_OPERATION, "glGetBooleanv" );
      return;
   }

   switch (target) {
      case GL_TEXTURE_1D:
         texObj = ctx->Texture.Current1D;
         break;
      case GL_TEXTURE_2D:
         texObj = ctx->Texture.Current2D;
         break;
      case GL_PROXY_TEXTURE_1D:
         texObj = ctx->Texture.Proxy1D;
         proxy = GL_TRUE;
         break;
      case GL_PROXY_TEXTURE_2D:
         texObj = ctx->Texture.Proxy2D;
         proxy = GL_TRUE;
         break;
      default:
         FUNC3(ctx, GL_INVALID_ENUM, "glColorTableEXT(target)");
         return;
   }

   /* internalformat = just like glTexImage */

   if (table->Width < 1 || table->Width > MAX_TEXTURE_PALETTE_SIZE
       || !FUNC4(table->Width)) {
      FUNC3(ctx, GL_INVALID_VALUE, "glColorTableEXT(width)");
      if (proxy) {
         texObj->PaletteSize = 0;
         texObj->PaletteIntFormat = 0;
         texObj->PaletteFormat = 0;
      }
      return;
   }

  /* per-texture object palette */
  texObj->PaletteSize = table->Width;
  texObj->PaletteIntFormat = internalFormat;
  texObj->PaletteFormat = FUNC2(internalFormat);
  if (!proxy) {
     FUNC1(texObj->Palette, table->Data, table->Width*table->Components);
     if (ctx->Driver.UpdateTexturePalette) {
        (*ctx->Driver.UpdateTexturePalette)( ctx, texObj );
     }
   }
}