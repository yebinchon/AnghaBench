
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ SwapBytes; scalar_t__ LsbFirst; } ;
struct TYPE_5__ {TYPE_3__ Unpack; } ;
typedef int GLvoid ;
typedef int GLushort ;
typedef int GLuint ;
typedef int GLubyte ;
typedef scalar_t__ GLsizei ;
typedef scalar_t__ GLint ;
typedef scalar_t__ GLenum ;
typedef TYPE_1__ GLcontext ;


 scalar_t__ CEILING (scalar_t__,int) ;
 scalar_t__ GL_BITMAP ;
 int GL_INVALID_ENUM ;
 int MEMCPY (int *,int *,scalar_t__) ;
 int free (int *) ;
 scalar_t__ gl_components_in_format (scalar_t__) ;
 int gl_error (TYPE_1__*,int ,char*) ;
 int gl_flip_bytes (int *,scalar_t__) ;
 int * gl_pixel_addr_in_image (TYPE_3__*,int const*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ gl_sizeof_type (scalar_t__) ;
 int gl_swap2 (int *,scalar_t__) ;
 int gl_swap4 (int *,scalar_t__) ;
 scalar_t__ malloc (scalar_t__) ;

GLvoid *gl_unpack_pixels( GLcontext *ctx,
                          GLsizei width, GLsizei height,
                          GLenum format, GLenum type,
                          const GLvoid *pixels )
{
   GLint s, n;

   s = gl_sizeof_type( type );
   if (s<0) {
      gl_error( ctx, GL_INVALID_ENUM, "internal error in gl_unpack(type)" );
      return ((void*)0);
   }

   n = gl_components_in_format( format );
   if (n<0) {
      gl_error( ctx, GL_INVALID_ENUM, "gl_unpack_pixels(format)" );
      return ((void*)0);
   }

   if (type==GL_BITMAP) {

      GLint bytes, i, width_in_bytes;
      GLubyte *buffer, *dst;
      GLvoid *src;


      bytes = CEILING( width * height , 8 );
      buffer = (GLubyte *) malloc( bytes );
      if (!buffer) {
  return ((void*)0);
      }


      width_in_bytes = CEILING( width, 8 );
      dst = buffer;
      for (i=0;i<height;i++) {
         src = gl_pixel_addr_in_image( &ctx->Unpack, pixels, width, height,
                                       format, type, i);
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
      return (GLvoid *) buffer;
   }
   else {

      GLint width_in_bytes, bytes, i;
      GLubyte *buffer, *dst;
      GLvoid *src;

      width_in_bytes = width * n * s;


      bytes = height * width_in_bytes;
      buffer = (GLubyte *) malloc( bytes );
      if (!buffer) {
  return ((void*)0);
      }


      dst = buffer;
      for (i=0;i<height;i++) {
         src = gl_pixel_addr_in_image( &ctx->Unpack, pixels, width, height,
                                       format, type, i);
         if (!src) {
            free(buffer);
            return ((void*)0);
         }
  MEMCPY( dst, src, width_in_bytes );
  dst += width_in_bytes;
      }


      if (ctx->Unpack.SwapBytes && s>1) {
  if (s==2) {
     gl_swap2( (GLushort *) buffer, bytes/2 );
  }
  else if (s==4) {
     gl_swap4( (GLuint *) buffer, bytes/4 );
  }
      }
      return (GLvoid *) buffer;
   }
}
