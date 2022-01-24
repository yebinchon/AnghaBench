#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_12__ ;

/* Type definitions */
struct gl_texture_image {int dummy; } ;
struct gl_image {scalar_t__ RefCount; } ;
struct TYPE_19__ {void* Dirty; struct gl_texture_image** Image; } ;
struct TYPE_17__ {TYPE_2__* Proxy1D; TYPE_7__* Current1D; void* AnyDirty; } ;
struct TYPE_15__ {int /*<<< orphan*/  (* TexImage ) (TYPE_4__*,scalar_t__,TYPE_7__*,size_t,size_t,struct gl_texture_image*) ;} ;
struct TYPE_18__ {TYPE_3__ Texture; TYPE_1__ Driver; int /*<<< orphan*/  NewState; } ;
struct TYPE_16__ {TYPE_12__** Image; } ;
struct TYPE_14__ {size_t Format; size_t Border; int Height; int /*<<< orphan*/  Width; } ;
typedef  int /*<<< orphan*/  GLsizei ;
typedef  size_t GLint ;
typedef  scalar_t__ GLenum ;
typedef  TYPE_4__ GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  GL_INVALID_ENUM ; 
 int /*<<< orphan*/  GL_INVALID_OPERATION ; 
 scalar_t__ GL_PROXY_TEXTURE_1D ; 
 scalar_t__ GL_TEXTURE_1D ; 
 void* GL_TRUE ; 
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 size_t MAX_TEXTURE_LEVELS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_12__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NEW_TEXTURING ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct gl_image*) ; 
 int /*<<< orphan*/  FUNC4 (struct gl_texture_image*) ; 
 struct gl_texture_image* FUNC5 (TYPE_4__*,struct gl_image*,size_t,size_t) ; 
 struct gl_texture_image* FUNC6 (TYPE_4__*,size_t,int /*<<< orphan*/ ,int,int,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,scalar_t__,TYPE_7__*,size_t,size_t,struct gl_texture_image*) ; 
 scalar_t__ FUNC8 (TYPE_4__*,scalar_t__,size_t,size_t,scalar_t__,scalar_t__,int /*<<< orphan*/ ,size_t) ; 

void FUNC9( GLcontext *ctx,
                    GLenum target, GLint level, GLint internalformat,
		    GLsizei width, GLint border, GLenum format,
		    GLenum type, struct gl_image *image )
{
   if (FUNC0(ctx)) {
      FUNC2( ctx, GL_INVALID_OPERATION, "glTexImage1D" );
      return;
   }

   if (target==GL_TEXTURE_1D) {
      struct gl_texture_image *teximage;
      if (FUNC8( ctx, target, level, internalformat,
                                  format, type, width, border )) {
         /* error in texture image was detected */
         return;
      }

      /* free current texture image, if any */
      if (ctx->Texture.Current1D->Image[level]) {
         FUNC4( ctx->Texture.Current1D->Image[level] );
      }

      /* make new texture from source image */
      if (image) {
         teximage = FUNC5(ctx, image, internalformat, border);
      }
      else {
         teximage = FUNC6(ctx, internalformat,
                                      width, 1, 1, border);
      }

      /* install new texture image */
      ctx->Texture.Current1D->Image[level] = teximage;
      ctx->Texture.Current1D->Dirty = GL_TRUE;
      ctx->Texture.AnyDirty = GL_TRUE;
      ctx->NewState |= NEW_TEXTURING;

      /* free the source image */
      if (image && image->RefCount==0) {
         /* if RefCount>0 then image must be in a display list */
         FUNC3(image);
      }

      /* tell driver about change */
      if (ctx->Driver.TexImage) {
         (*ctx->Driver.TexImage)( ctx, GL_TEXTURE_1D,
                                  ctx->Texture.Current1D,
                                  level, internalformat, teximage );
      }
   }
   else if (target==GL_PROXY_TEXTURE_1D) {
      /* Proxy texture: check for errors and update proxy state */
      if (FUNC8( ctx, target, level, internalformat,
                                  format, type, width, border )) {
         if (level>=0 && level<MAX_TEXTURE_LEVELS) {
            FUNC1( ctx->Texture.Proxy1D->Image[level], 0,
                    sizeof(struct gl_texture_image) );
         }
      }
      else {
         ctx->Texture.Proxy1D->Image[level]->Format = internalformat;
         ctx->Texture.Proxy1D->Image[level]->Border = border;
         ctx->Texture.Proxy1D->Image[level]->Width = width;
         ctx->Texture.Proxy1D->Image[level]->Height = 1;
      }
      if (image && image->RefCount==0) {
         /* if RefCount>0 then image must be in a display list */
         FUNC3(image);
      }
   }
   else {
      FUNC2( ctx, GL_INVALID_ENUM, "glTexImage1D(target)" );
      return;
   }
}