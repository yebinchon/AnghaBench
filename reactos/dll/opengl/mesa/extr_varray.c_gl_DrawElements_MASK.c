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
typedef  int /*<<< orphan*/  GLvoid ;
typedef  int /*<<< orphan*/  GLushort ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  int /*<<< orphan*/  GLubyte ;
typedef  scalar_t__ GLsizei ;
typedef  scalar_t__ GLint ;
typedef  int GLenum ;
typedef  int /*<<< orphan*/  GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  GL_INVALID_ENUM ; 
 int /*<<< orphan*/  GL_INVALID_OPERATION ; 
 int /*<<< orphan*/  GL_INVALID_VALUE ; 
#define  GL_LINES 140 
#define  GL_LINE_LOOP 139 
#define  GL_LINE_STRIP 138 
#define  GL_POINTS 137 
#define  GL_POLYGON 136 
#define  GL_QUADS 135 
#define  GL_QUAD_STRIP 134 
#define  GL_TRIANGLES 133 
#define  GL_TRIANGLE_FAN 132 
#define  GL_TRIANGLE_STRIP 131 
#define  GL_UNSIGNED_BYTE 130 
#define  GL_UNSIGNED_INT 129 
#define  GL_UNSIGNED_SHORT 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

void FUNC5( GLcontext *ctx,
                      GLenum mode, GLsizei count,
                      GLenum type, const GLvoid *indices )
{
   
   if (FUNC0(ctx)) {
      FUNC4( ctx, GL_INVALID_OPERATION, "glDrawElements" );
      return;
   }
   if (count<0) {
      FUNC4( ctx, GL_INVALID_VALUE, "glDrawElements(count)" );
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
         FUNC4( ctx, GL_INVALID_ENUM, "glDrawArrays(mode)" );
         return;
   }
   switch (type) {
      case GL_UNSIGNED_BYTE:
         {
            GLubyte *ub_indices = (GLubyte *) indices;
            GLint i;
            FUNC2( ctx, mode );
            for (i=0;i<count;i++) {
               FUNC1( ctx, (GLint) ub_indices[i] );
            }
            FUNC3( ctx );
         }
         break;
      case GL_UNSIGNED_SHORT:
         {
            GLushort *us_indices = (GLushort *) indices;
            GLint i;
            FUNC2( ctx, mode );
            for (i=0;i<count;i++) {
               FUNC1( ctx, (GLint) us_indices[i] );
            }
            FUNC3( ctx );
         }
         break;
      case GL_UNSIGNED_INT:
         {
            GLuint *ui_indices = (GLuint *) indices;
            GLint i;
            FUNC2( ctx, mode );
            for (i=0;i<count;i++) {
               FUNC1( ctx, (GLint) ui_indices[i] );
            }
            FUNC3( ctx );
         }
         break;
      default:
         FUNC4( ctx, GL_INVALID_ENUM, "glDrawElements(type)" );
         return;
   }
}