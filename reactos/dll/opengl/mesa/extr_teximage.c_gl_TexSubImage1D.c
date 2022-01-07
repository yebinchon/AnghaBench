
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct gl_texture_image {scalar_t__ Border; scalar_t__ Width; scalar_t__ Format; int IntFormat; int * Data; } ;
struct gl_image {scalar_t__ Type; size_t Components; scalar_t__ RefCount; scalar_t__ Data; } ;
struct TYPE_14__ {struct gl_texture_image** Image; void* Dirty; } ;
struct TYPE_12__ {TYPE_5__* Current1D; void* AnyDirty; } ;
struct TYPE_11__ {int (* TexImage ) (TYPE_3__*,scalar_t__,TYPE_5__*,size_t,int ,struct gl_texture_image*) ;int (* TexSubImage ) (TYPE_3__*,scalar_t__,TYPE_5__*,size_t,size_t,int ,scalar_t__,int,int ,struct gl_texture_image*) ;} ;
struct TYPE_13__ {TYPE_2__ Texture; TYPE_1__ Driver; } ;
typedef int GLubyte ;
typedef scalar_t__ GLsizei ;
typedef size_t GLint ;
typedef scalar_t__ GLenum ;
typedef TYPE_3__ GLcontext ;


 scalar_t__ GL_BITMAP ;
 scalar_t__ GL_COLOR_INDEX ;
 scalar_t__ GL_DEPTH_COMPONENT ;
 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;
 int GL_INVALID_VALUE ;
 int GL_OUT_OF_MEMORY ;
 scalar_t__ GL_STENCIL_INDEX ;
 scalar_t__ GL_TEXTURE_1D ;
 void* GL_TRUE ;
 scalar_t__ GL_UNSIGNED_BYTE ;
 size_t MAX_TEXTURE_LEVELS ;
 int MEMCPY (int *,int *,scalar_t__) ;
 size_t components_in_intformat (scalar_t__) ;
 int gl_error (TYPE_3__*,int ,char*) ;
 int gl_free_image (struct gl_image*) ;
 int gl_free_texture_image (struct gl_texture_image*) ;
 size_t gl_sizeof_type (scalar_t__) ;
 struct gl_texture_image* image_to_texture (TYPE_3__*,struct gl_image*,int ,scalar_t__) ;
 int stub1 (TYPE_3__*,scalar_t__,TYPE_5__*,size_t,size_t,int ,scalar_t__,int,int ,struct gl_texture_image*) ;
 int stub2 (TYPE_3__*,scalar_t__,TYPE_5__*,size_t,int ,struct gl_texture_image*) ;

void gl_TexSubImage1D( GLcontext *ctx,
                       GLenum target, GLint level, GLint xoffset,
                       GLsizei width, GLenum format, GLenum type,
                       struct gl_image *image )
{
   struct gl_texture_image *destTex;

   if (target!=GL_TEXTURE_1D) {
      gl_error( ctx, GL_INVALID_ENUM, "glTexSubImage1D(target)" );
      return;
   }
   if (level<0 || level>=MAX_TEXTURE_LEVELS) {
      gl_error( ctx, GL_INVALID_ENUM, "glTexSubImage1D(level)" );
      return;
   }

   destTex = ctx->Texture.Current1D->Image[level];
   if (!destTex) {
      gl_error( ctx, GL_INVALID_OPERATION, "glTexSubImage1D" );
      return;
   }

   if (xoffset < -((GLint)destTex->Border)) {
      gl_error( ctx, GL_INVALID_VALUE, "glTexSubImage1D(xoffset)" );
      return;
   }
   if (xoffset + width > destTex->Width + destTex->Border) {
      gl_error( ctx, GL_INVALID_VALUE, "glTexSubImage1D(xoffset+width)" );
      return;
   }

   if (image) {

      GLint texcomponents = components_in_intformat(destTex->Format);

      if (image->Type==GL_UNSIGNED_BYTE && texcomponents==image->Components) {


         GLubyte *dst = destTex->Data + texcomponents * xoffset;
         GLubyte *src = (GLubyte *) image->Data;
         MEMCPY( dst, src, width * texcomponents );
      }
      else {

         struct gl_texture_image *subTexImg = image_to_texture(ctx, image,
                                        destTex->IntFormat, destTex->Border);
         GLubyte *dst = destTex->Data + texcomponents * xoffset;
         GLubyte *src = subTexImg->Data;
         MEMCPY( dst, src, width * texcomponents );
         gl_free_texture_image(subTexImg);
      }


      if (image->RefCount==0) {
         gl_free_image(image);
      }

      ctx->Texture.Current1D->Dirty = GL_TRUE;
      ctx->Texture.AnyDirty = GL_TRUE;


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

      GLint components, size;

      if (width<0) {
         gl_error( ctx, GL_INVALID_VALUE, "glTexSubImage1D(width)" );
         return;
      }
      if (type==GL_BITMAP && format!=GL_COLOR_INDEX) {
         gl_error( ctx, GL_INVALID_ENUM, "glTexSubImage1D(format)" );
         return;
      }
      components = components_in_intformat( format );
      if (components<0 || format==GL_STENCIL_INDEX
          || format==GL_DEPTH_COMPONENT){
         gl_error( ctx, GL_INVALID_ENUM, "glTexSubImage1D(format)" );
         return;
      }
      size = gl_sizeof_type( type );
      if (size<=0) {
         gl_error( ctx, GL_INVALID_ENUM, "glTexSubImage1D(type)" );
         return;
      }

      gl_error( ctx, GL_OUT_OF_MEMORY, "glTexSubImage1D" );
   }
}
