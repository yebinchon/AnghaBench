#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct gl_texture_image {scalar_t__ Border; scalar_t__ Width; scalar_t__ Format; int /*<<< orphan*/  IntFormat; int /*<<< orphan*/ * Data; } ;
struct gl_image {scalar_t__ Type; size_t Components; scalar_t__ RefCount; scalar_t__ Data; } ;
struct TYPE_14__ {struct gl_texture_image** Image; void* Dirty; } ;
struct TYPE_12__ {TYPE_5__* Current1D; void* AnyDirty; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* TexImage ) (TYPE_3__*,scalar_t__,TYPE_5__*,size_t,int /*<<< orphan*/ ,struct gl_texture_image*) ;int /*<<< orphan*/  (* TexSubImage ) (TYPE_3__*,scalar_t__,TYPE_5__*,size_t,size_t,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,struct gl_texture_image*) ;} ;
struct TYPE_13__ {TYPE_2__ Texture; TYPE_1__ Driver; } ;
typedef  int /*<<< orphan*/  GLubyte ;
typedef  scalar_t__ GLsizei ;
typedef  size_t GLint ;
typedef  scalar_t__ GLenum ;
typedef  TYPE_3__ GLcontext ;

/* Variables and functions */
 scalar_t__ GL_BITMAP ; 
 scalar_t__ GL_COLOR_INDEX ; 
 scalar_t__ GL_DEPTH_COMPONENT ; 
 int /*<<< orphan*/  GL_INVALID_ENUM ; 
 int /*<<< orphan*/  GL_INVALID_OPERATION ; 
 int /*<<< orphan*/  GL_INVALID_VALUE ; 
 int /*<<< orphan*/  GL_OUT_OF_MEMORY ; 
 scalar_t__ GL_STENCIL_INDEX ; 
 scalar_t__ GL_TEXTURE_1D ; 
 void* GL_TRUE ; 
 scalar_t__ GL_UNSIGNED_BYTE ; 
 size_t MAX_TEXTURE_LEVELS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 size_t FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct gl_image*) ; 
 int /*<<< orphan*/  FUNC4 (struct gl_texture_image*) ; 
 size_t FUNC5 (scalar_t__) ; 
 struct gl_texture_image* FUNC6 (TYPE_3__*,struct gl_image*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,scalar_t__,TYPE_5__*,size_t,size_t,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,struct gl_texture_image*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,scalar_t__,TYPE_5__*,size_t,int /*<<< orphan*/ ,struct gl_texture_image*) ; 

void FUNC9( GLcontext *ctx,
                       GLenum target, GLint level, GLint xoffset,
                       GLsizei width, GLenum format, GLenum type,
                       struct gl_image *image )
{
   struct gl_texture_image *destTex;

   if (target!=GL_TEXTURE_1D) {
      FUNC2( ctx, GL_INVALID_ENUM, "glTexSubImage1D(target)" );
      return;
   }
   if (level<0 || level>=MAX_TEXTURE_LEVELS) {
      FUNC2( ctx, GL_INVALID_ENUM, "glTexSubImage1D(level)" );
      return;
   }

   destTex = ctx->Texture.Current1D->Image[level];
   if (!destTex) {
      FUNC2( ctx, GL_INVALID_OPERATION, "glTexSubImage1D" );
      return;
   }

   if (xoffset < -((GLint)destTex->Border)) {
      FUNC2( ctx, GL_INVALID_VALUE, "glTexSubImage1D(xoffset)" );
      return;
   }
   if (xoffset + width > destTex->Width + destTex->Border) {
      FUNC2( ctx, GL_INVALID_VALUE, "glTexSubImage1D(xoffset+width)" );
      return;
   }

   if (image) {
      /* unpacking must have been error-free */
      GLint texcomponents = FUNC1(destTex->Format);

      if (image->Type==GL_UNSIGNED_BYTE && texcomponents==image->Components) {
         /* Simple case, just byte copy image data into texture image */
         /* row by row. */
         GLubyte *dst = destTex->Data + texcomponents * xoffset;
         GLubyte *src = (GLubyte *) image->Data;
         FUNC0( dst, src, width * texcomponents );
      }
      else {
         /* General case, convert image pixels into texels, scale, bias, etc */
         struct gl_texture_image *subTexImg = FUNC6(ctx, image,
                                        destTex->IntFormat, destTex->Border);
         GLubyte *dst = destTex->Data + texcomponents * xoffset;
         GLubyte *src = subTexImg->Data;
         FUNC0( dst, src, width * texcomponents );
         FUNC4(subTexImg);
      }

      /* if the image's reference count is zero, delete it now */
      if (image->RefCount==0) {
         FUNC3(image);
      }

      ctx->Texture.Current1D->Dirty = GL_TRUE;
      ctx->Texture.AnyDirty = GL_TRUE;

      /* tell driver about change */
      if (ctx->Driver.TexSubImage) {
	(*ctx->Driver.TexSubImage)( ctx, GL_TEXTURE_1D,
				    ctx->Texture.Current1D, level,
				    xoffset,0,width,1,
				    ctx->Texture.Current1D->Image[level]->IntFormat,
				    destTex );
      }
      else {
	if (ctx->Driver.TexImage) {
	  (*ctx->Driver.TexImage)( ctx, GL_TEXTURE_1D,
				   ctx->Texture.Current1D,
				   level, ctx->Texture.Current1D->Image[level]->IntFormat,
				   destTex );
	}
      }
   }
   else {
      /* if no image, an error must have occured, do more testing now */
      GLint components, size;

      if (width<0) {
         FUNC2( ctx, GL_INVALID_VALUE, "glTexSubImage1D(width)" );
         return;
      }
      if (type==GL_BITMAP && format!=GL_COLOR_INDEX) {
         FUNC2( ctx, GL_INVALID_ENUM, "glTexSubImage1D(format)" );
         return;
      }
      components = FUNC1( format );
      if (components<0 || format==GL_STENCIL_INDEX
          || format==GL_DEPTH_COMPONENT){
         FUNC2( ctx, GL_INVALID_ENUM, "glTexSubImage1D(format)" );
         return;
      }
      size = FUNC5( type );
      if (size<=0) {
         FUNC2( ctx, GL_INVALID_ENUM, "glTexSubImage1D(type)" );
         return;
      }
      /* if we get here, probably ran out of memory during unpacking */
      FUNC2( ctx, GL_OUT_OF_MEMORY, "glTexSubImage1D" );
   }
}