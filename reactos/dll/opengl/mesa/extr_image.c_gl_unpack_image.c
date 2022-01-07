
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct gl_image {void** Data; scalar_t__ RefCount; scalar_t__ Type; scalar_t__ Format; scalar_t__ Components; scalar_t__ Height; scalar_t__ Width; } ;
struct TYPE_6__ {int SwapBytes; scalar_t__ LsbFirst; } ;
struct TYPE_5__ {TYPE_4__ Unpack; } ;
typedef void* GLvoid ;
typedef int GLushort ;
typedef int GLuint ;
typedef void* GLubyte ;
typedef int GLshort ;
typedef scalar_t__ GLint ;
typedef void* GLfloat ;
typedef scalar_t__ GLenum ;
typedef TYPE_1__ GLcontext ;
typedef int GLbyte ;
typedef int GLboolean ;


 int BYTE_TO_FLOAT (int ) ;
 scalar_t__ CEILING (scalar_t__,int) ;
 scalar_t__ GL_BITMAP ;

 scalar_t__ GL_COLOR_INDEX ;
 scalar_t__ GL_DEPTH_COMPONENT ;



 scalar_t__ GL_STENCIL_INDEX ;



 void* INT_TO_FLOAT (scalar_t__) ;
 int MEMCPY (void**,void**,scalar_t__) ;
 void* SHORT_TO_FLOAT (int) ;
 int UBYTE_TO_FLOAT (void*) ;
 void* UINT_TO_FLOAT (int) ;
 void* USHORT_TO_FLOAT (int) ;
 int assert (int) ;
 int free (void**) ;
 scalar_t__ gl_components_in_format (scalar_t__) ;
 int gl_flip_bytes (void**,scalar_t__) ;
 void** gl_pixel_addr_in_image (TYPE_4__*,void* const*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int gl_problem (TYPE_1__*,char*) ;
 scalar_t__ malloc (int) ;

struct gl_image *gl_unpack_image( GLcontext *ctx,
                                  GLint width, GLint height,
                                  GLenum srcFormat, GLenum srcType,
                                  const GLvoid *pixels )
{
   GLint components;
   GLenum destType;

   if (srcType==130) {
      destType = 130;
   }
   else if (srcType==GL_BITMAP) {
      destType = GL_BITMAP;
   }
   else {
      destType = 133;
   }

   components = gl_components_in_format( srcFormat );

   if (components < 0)
      return ((void*)0);

   if (srcType==GL_BITMAP || destType==GL_BITMAP) {
      struct gl_image *image;
      GLint bytes, i, width_in_bytes;
      GLubyte *buffer, *dst;
      assert( srcType==GL_BITMAP );
      assert( destType==GL_BITMAP );


      if (width > 0 && height > 0)
         bytes = ((width+7)/8 * height);
      else
         bytes = 0;
      if (bytes>0 && pixels!=((void*)0)) {
         buffer = (GLubyte *) malloc( bytes );
         if (!buffer) {
            return ((void*)0);
         }

         width_in_bytes = CEILING( width, 8 );
         dst = buffer;
         for (i=0; i<height; i++) {
            GLvoid *src = gl_pixel_addr_in_image( &ctx->Unpack, pixels,
                                                  width, height,
                                                  GL_COLOR_INDEX, srcType,
                                                  i);
            if (!src) {
               free(buffer);
               return ((void*)0);
            }
            MEMCPY( dst, src, width_in_bytes );
            dst += width_in_bytes;
         }

         if (ctx->Unpack.LsbFirst) {
            gl_flip_bytes( buffer, bytes );
         }
      }
      else {

         buffer = ((void*)0);
      }

      image = (struct gl_image *) malloc( sizeof(struct gl_image) );
      if (image) {
         image->Width = width;
         image->Height = height;
         image->Components = 0;
         image->Format = GL_COLOR_INDEX;
         image->Type = GL_BITMAP;
         image->Data = buffer;
         image->RefCount = 0;
      }
      else {
         if (buffer)
            free( buffer );
         return ((void*)0);
      }
      return image;
   }
   else if (srcFormat==GL_DEPTH_COMPONENT) {


   }
   else if (srcFormat==GL_STENCIL_INDEX) {


   }
   else if (destType==130) {
      struct gl_image *image;
      GLint width_in_bytes;
      GLubyte *buffer, *dst;
      GLint i;
      assert( srcType==130 );

      width_in_bytes = width * components * sizeof(GLubyte);
      buffer = (GLubyte *) malloc( height * width_in_bytes );
      if (!buffer) {
         return ((void*)0);
      }

      dst = buffer;
      for (i=0;i<height;i++) {
         GLubyte *src = (GLubyte *) gl_pixel_addr_in_image( &ctx->Unpack,
                        pixels, width, height, srcFormat, srcType, i);
         if (!src) {
            free(buffer);
            return ((void*)0);
         }
         MEMCPY( dst, src, width_in_bytes );
         dst += width_in_bytes;
      }

      if (ctx->Unpack.LsbFirst) {
         gl_flip_bytes( buffer, height * width_in_bytes );
      }

      image = (struct gl_image *) malloc( sizeof(struct gl_image) );
      if (image) {
         image->Width = width;
         image->Height = height;
         image->Components = components;
         image->Format = srcFormat;
         image->Type = 130;
         image->Data = buffer;
         image->RefCount = 0;
      }
      else {
         free( buffer );
         return ((void*)0);
      }
      return image;
   }
   else if (destType==133) {
      struct gl_image *image;
      GLfloat *buffer, *dst;
      GLint elems_per_row;
      GLint i, j;
      GLboolean normalize;
      elems_per_row = width * components;
      buffer = (GLfloat *) malloc( height * elems_per_row * sizeof(GLfloat));
      if (!buffer) {
         return ((void*)0);
      }

      normalize = (srcFormat != GL_COLOR_INDEX)
               && (srcFormat != GL_STENCIL_INDEX);

      dst = buffer;

      for (i=0;i<height;i++) {
         GLvoid *src = gl_pixel_addr_in_image( &ctx->Unpack, pixels,
                                               width, height,
                                               srcFormat, srcType,
                                               i);
         if (!src) {
            free(buffer);
            return ((void*)0);
         }

         switch (srcType) {
            case 130:
               if (normalize) {
                  for (j=0;j<elems_per_row;j++) {
                     *dst++ = UBYTE_TO_FLOAT(((GLubyte*)src)[j]);
                  }
               }
               else {
                  for (j=0;j<elems_per_row;j++) {
                     *dst++ = (GLfloat) ((GLubyte*)src)[j];
                  }
               }
               break;
            case 134:
               if (normalize) {
                  for (j=0;j<elems_per_row;j++) {
                     *dst++ = BYTE_TO_FLOAT(((GLbyte*)src)[j]);
                  }
               }
               else {
                  for (j=0;j<elems_per_row;j++) {
                     *dst++ = (GLfloat) ((GLbyte*)src)[j];
                  }
               }
               break;
            case 128:
               if (ctx->Unpack.SwapBytes) {
                  for (j=0;j<elems_per_row;j++) {
                     GLushort value = ((GLushort*)src)[j];
                     value = ((value >> 8) & 0xff) | ((value&0xff) << 8);
                     if (normalize) {
                        *dst++ = USHORT_TO_FLOAT(value);
                     }
                     else {
                        *dst++ = (GLfloat) value;
                     }
                  }
               }
               else {
                  if (normalize) {
                     for (j=0;j<elems_per_row;j++) {
                        *dst++ = USHORT_TO_FLOAT(((GLushort*)src)[j]);
                     }
                  }
                  else {
                     for (j=0;j<elems_per_row;j++) {
                        *dst++ = (GLfloat) ((GLushort*)src)[j];
                     }
                  }
               }
               break;
            case 131:
               if (ctx->Unpack.SwapBytes) {
                  for (j=0;j<elems_per_row;j++) {
                     GLshort value = ((GLshort*)src)[j];
                     value = ((value >> 8) & 0xff) | ((value&0xff) << 8);
                     if (normalize) {
                        *dst++ = SHORT_TO_FLOAT(value);
                     }
                     else {
                        *dst++ = (GLfloat) value;
                     }
                  }
               }
               else {
                  if (normalize) {
                     for (j=0;j<elems_per_row;j++) {
                        *dst++ = SHORT_TO_FLOAT(((GLshort*)src)[j]);
                     }
                  }
                  else {
                     for (j=0;j<elems_per_row;j++) {
                        *dst++ = (GLfloat) ((GLshort*)src)[j];
                     }
                  }
               }
               break;
            case 129:
               if (ctx->Unpack.SwapBytes) {
                  GLuint value;
                  for (j=0;j<elems_per_row;j++) {
                     value = ((GLuint*)src)[j];
                     value = ((value & 0xff000000) >> 24)
                           | ((value & 0x00ff0000) >> 8)
                           | ((value & 0x0000ff00) << 8)
                           | ((value & 0x000000ff) << 24);
                     if (normalize) {
                        *dst++ = UINT_TO_FLOAT(value);
                     }
                     else {
                        *dst++ = (GLfloat) value;
                     }
                  }
               }
               else {
                  if (normalize) {
                     for (j=0;j<elems_per_row;j++) {
                        *dst++ = UINT_TO_FLOAT(((GLuint*)src)[j]);
                     }
                  }
                  else {
                     for (j=0;j<elems_per_row;j++) {
                        *dst++ = (GLfloat) ((GLuint*)src)[j];
                     }
                  }
               }
               break;
            case 132:
               if (ctx->Unpack.SwapBytes) {
                  GLint value;
                  for (j=0;j<elems_per_row;j++) {
                     value = ((GLint*)src)[j];
                     value = ((value & 0xff000000) >> 24)
                           | ((value & 0x00ff0000) >> 8)
                           | ((value & 0x0000ff00) << 8)
                           | ((value & 0x000000ff) << 24);
                     if (normalize) {
                        *dst++ = INT_TO_FLOAT(value);
                     }
                     else {
                        *dst++ = (GLfloat) value;
                     }
                  }
               }
               else {
                  if (normalize) {
                     for (j=0;j<elems_per_row;j++) {
                        *dst++ = INT_TO_FLOAT(((GLint*)src)[j]);
                     }
                  }
                  else {
                     for (j=0;j<elems_per_row;j++) {
                        *dst++ = (GLfloat) ((GLint*)src)[j];
                     }
                  }
               }
               break;
            case 133:
               if (ctx->Unpack.SwapBytes) {
                  GLint value;
                  for (j=0;j<elems_per_row;j++) {
                     value = ((GLuint*)src)[j];
                     value = ((value & 0xff000000) >> 24)
                           | ((value & 0x00ff0000) >> 8)
                           | ((value & 0x0000ff00) << 8)
                           | ((value & 0x000000ff) << 24);
                     *dst++ = *((GLfloat*) &value);
                  }
               }
               else {
                  MEMCPY( dst, src, elems_per_row*sizeof(GLfloat) );
                  dst += elems_per_row;
               }
               break;
            default:
               gl_problem(ctx, "Bad type in gl_unpack_image3D");
               return ((void*)0);
         }
      }

      image = (struct gl_image *) malloc( sizeof(struct gl_image) );
      if (image) {
         image->Width = width;
         image->Height = height;
         image->Components = components;
         image->Format = srcFormat;
         image->Type = 133;
         image->Data = buffer;
         image->RefCount = 0;
      }
      else {
         free( buffer );
         return ((void*)0);
      }
      return image;
   }
   else {
      gl_problem(ctx, "Bad dest type in gl_unpack_image3D");
      return ((void*)0);
   }
   return ((void*)0);
}
