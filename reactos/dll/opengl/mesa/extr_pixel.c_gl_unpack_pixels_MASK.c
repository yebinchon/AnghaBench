#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ SwapBytes; scalar_t__ LsbFirst; } ;
struct TYPE_5__ {TYPE_3__ Unpack; } ;
typedef  int /*<<< orphan*/  GLvoid ;
typedef  int /*<<< orphan*/  GLushort ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  int /*<<< orphan*/  GLubyte ;
typedef  scalar_t__ GLsizei ;
typedef  scalar_t__ GLint ;
typedef  scalar_t__ GLenum ;
typedef  TYPE_1__ GLcontext ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 scalar_t__ GL_BITMAP ; 
 int /*<<< orphan*/  GL_INVALID_ENUM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_3__*,int /*<<< orphan*/  const*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 

GLvoid *FUNC11( GLcontext *ctx,
                          GLsizei width, GLsizei height,
                          GLenum format, GLenum type,
                          const GLvoid *pixels )
{
   GLint s, n;

   s = FUNC7( type );
   if (s<0) {
      FUNC4( ctx, GL_INVALID_ENUM, "internal error in gl_unpack(type)" );
      return NULL;
   }

   n = FUNC3( format );
   if (n<0) {
      FUNC4( ctx, GL_INVALID_ENUM, "gl_unpack_pixels(format)" );
      return NULL;
   }

   if (type==GL_BITMAP) {
      /* BITMAP data */
      GLint bytes, i, width_in_bytes;
      GLubyte *buffer, *dst;
      GLvoid *src;

      /* Alloc dest storage */
      bytes = FUNC0( width * height , 8 );
      buffer = (GLubyte *) FUNC10( bytes );
      if (!buffer) {
	 return NULL;
      }

      /* Copy/unpack pixel data to buffer */
      width_in_bytes = FUNC0( width, 8 );
      dst = buffer;
      for (i=0;i<height;i++) {
         src = FUNC6( &ctx->Unpack, pixels, width, height,
                                       format, type, i);
         if (!src) {
            FUNC2(buffer);
            return NULL;
         }
	 FUNC1( dst, src, width_in_bytes );
	 dst += width_in_bytes;
      }

      /* Bit flipping */
      if (ctx->Unpack.LsbFirst) {
	 FUNC5( buffer, bytes );
      }
      return (GLvoid *) buffer;
   }
   else {
      /* Non-BITMAP data */
      GLint width_in_bytes, bytes, i;
      GLubyte *buffer, *dst;
      GLvoid *src;

      width_in_bytes = width * n * s;

      /* Alloc dest storage */
      bytes = height * width_in_bytes;
      buffer = (GLubyte *) FUNC10( bytes );
      if (!buffer) {
	 return NULL;
      }

      /* Copy/unpack pixel data to buffer */
      dst = buffer;
      for (i=0;i<height;i++) {
         src = FUNC6( &ctx->Unpack, pixels, width, height,
                                       format, type, i);
         if (!src) {
            FUNC2(buffer);
            return NULL;
         }
	 FUNC1( dst, src, width_in_bytes );
	 dst += width_in_bytes;
      }

      /* Byte swapping */
      if (ctx->Unpack.SwapBytes && s>1) {
	 if (s==2) {
	    FUNC8( (GLushort *) buffer, bytes/2 );
	 }
	 else if (s==4) {
	    FUNC9( (GLuint *) buffer, bytes/4 );
	 }
      }
      return (GLvoid *) buffer;
   }
}