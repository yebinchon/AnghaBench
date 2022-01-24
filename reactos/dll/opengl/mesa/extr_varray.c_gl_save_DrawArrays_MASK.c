#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ GLsizei ;
typedef  scalar_t__ GLint ;
typedef  int /*<<< orphan*/  GLenum ;
typedef  int /*<<< orphan*/  GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  GL_INVALID_ENUM ; 
 int /*<<< orphan*/  GL_INVALID_OPERATION ; 
 int /*<<< orphan*/  GL_INVALID_VALUE ; 
#define  GL_LINES 137 
#define  GL_LINE_LOOP 136 
#define  GL_LINE_STRIP 135 
#define  GL_POINTS 134 
#define  GL_POLYGON 133 
#define  GL_QUADS 132 
#define  GL_QUAD_STRIP 131 
#define  GL_TRIANGLES 130 
#define  GL_TRIANGLE_FAN 129 
#define  GL_TRIANGLE_STRIP 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5( GLcontext *ctx,
                         GLenum mode, GLint first, GLsizei count )
{
   GLint i;

   if (FUNC0(ctx)) {
      FUNC1( ctx, GL_INVALID_OPERATION, "glDrawArrays" );
      return;
   }
   if (count<0) {
      FUNC1( ctx, GL_INVALID_VALUE, "glDrawArrays(count)" );
      return;
   }
   switch (mode) {
      case GL_POINTS:
      case GL_LINES:
      case GL_LINE_STRIP:
      case GL_LINE_LOOP:
      case GL_TRIANGLES:
      case GL_TRIANGLE_STRIP:
      case GL_TRIANGLE_FAN:
      case GL_QUADS:
      case GL_QUAD_STRIP:
      case GL_POLYGON:
         /* OK */
         break;
      default:
         FUNC1( ctx, GL_INVALID_ENUM, "glDrawArrays(mode)" );
         return;
   }


   /* Note: this will do compile AND execute if needed */
   FUNC3( ctx, mode );
   for (i=0;i<count;i++) {
      FUNC2( ctx, first+i );
   }
   FUNC4( ctx );
}