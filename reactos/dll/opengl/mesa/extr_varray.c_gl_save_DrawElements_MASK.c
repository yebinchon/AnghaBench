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
typedef  size_t GLsizei ;
typedef  size_t GLint ;
typedef  int GLenum ;
typedef  int /*<<< orphan*/  GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  GL_INVALID_ENUM ; 
#define  GL_UNSIGNED_BYTE 130 
#define  GL_UNSIGNED_INT 129 
#define  GL_UNSIGNED_SHORT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4( GLcontext *ctx,
                           GLenum mode, GLsizei count,
                           GLenum type, const GLvoid *indices )
{
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
         FUNC0( ctx, GL_INVALID_ENUM, "glDrawElements(type)" );
         return;
   }
}