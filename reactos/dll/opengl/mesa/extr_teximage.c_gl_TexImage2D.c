
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;


struct gl_texture_image {int dummy; } ;
struct gl_image {scalar_t__ RefCount; } ;
struct TYPE_19__ {void* Dirty; struct gl_texture_image** Image; } ;
struct TYPE_17__ {TYPE_2__* Proxy2D; TYPE_7__* Current2D; void* AnyDirty; } ;
struct TYPE_15__ {int (* TexImage ) (TYPE_4__*,scalar_t__,TYPE_7__*,size_t,size_t,struct gl_texture_image*) ;} ;
struct TYPE_18__ {TYPE_3__ Texture; TYPE_1__ Driver; int NewState; } ;
struct TYPE_16__ {TYPE_12__** Image; } ;
struct TYPE_14__ {size_t Format; size_t Border; void* Height; void* Width; } ;
typedef void* GLsizei ;
typedef size_t GLint ;
typedef scalar_t__ GLenum ;
typedef TYPE_4__ GLcontext ;


 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;
 scalar_t__ GL_PROXY_TEXTURE_2D ;
 scalar_t__ GL_TEXTURE_2D ;
 void* GL_TRUE ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_4__*) ;
 size_t MAX_TEXTURE_LEVELS ;
 int MEMSET (TYPE_12__*,int ,int) ;
 int NEW_TEXTURING ;
 int gl_error (TYPE_4__*,int ,char*) ;
 int gl_free_image (struct gl_image*) ;
 int gl_free_texture_image (struct gl_texture_image*) ;
 struct gl_texture_image* image_to_texture (TYPE_4__*,struct gl_image*,size_t,size_t) ;
 struct gl_texture_image* make_null_texture (TYPE_4__*,size_t,void*,void*,int,size_t) ;
 int stub1 (TYPE_4__*,scalar_t__,TYPE_7__*,size_t,size_t,struct gl_texture_image*) ;
 scalar_t__ texture_2d_error_check (TYPE_4__*,scalar_t__,size_t,size_t,scalar_t__,scalar_t__,void*,void*,size_t) ;

void gl_TexImage2D( GLcontext *ctx,
                    GLenum target, GLint level, GLint internalformat,
                    GLsizei width, GLsizei height, GLint border,
                    GLenum format, GLenum type,
                    struct gl_image *image )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glTexImage2D" );
      return;
   }

   if (target==GL_TEXTURE_2D) {
      struct gl_texture_image *teximage;
      if (texture_2d_error_check( ctx, target, level, internalformat,
                                  format, type, width, height, border )) {

         return;
      }


      if (ctx->Texture.Current2D->Image[level]) {
         gl_free_texture_image( ctx->Texture.Current2D->Image[level] );
      }


      if (image) {
         teximage = image_to_texture(ctx, image, internalformat, border);
      }
      else {
         teximage = make_null_texture(ctx, internalformat,
                                      width, height, 1, border);
      }


      ctx->Texture.Current2D->Image[level] = teximage;
      ctx->Texture.Current2D->Dirty = GL_TRUE;
      ctx->Texture.AnyDirty = GL_TRUE;
      ctx->NewState |= NEW_TEXTURING;


      if (image && image->RefCount==0) {

         gl_free_image(image);
      }


      if (ctx->Driver.TexImage) {
         (*ctx->Driver.TexImage)( ctx, GL_TEXTURE_2D,
                                  ctx->Texture.Current2D,
                                  level, internalformat, teximage );
      }
   }
   else if (target==GL_PROXY_TEXTURE_2D) {

      if (texture_2d_error_check( ctx, target, level, internalformat,
                                  format, type, width, height, border )) {
         if (level>=0 && level<MAX_TEXTURE_LEVELS) {
            MEMSET( ctx->Texture.Proxy2D->Image[level], 0,
                    sizeof(struct gl_texture_image) );
         }
      }
      else {
         ctx->Texture.Proxy2D->Image[level]->Format = internalformat;
         ctx->Texture.Proxy2D->Image[level]->Border = border;
         ctx->Texture.Proxy2D->Image[level]->Width = width;
         ctx->Texture.Proxy2D->Image[level]->Height = height;
      }
      if (image && image->RefCount==0) {

         gl_free_image(image);
      }
   }
   else {
      gl_error( ctx, GL_INVALID_ENUM, "glTexImage2D(target)" );
      return;
   }
}
