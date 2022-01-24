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
typedef  int GLenum ;
typedef  int /*<<< orphan*/  GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  GL_INVALID_ENUM ; 
 int /*<<< orphan*/  GL_INVALID_OPERATION ; 
#define  GL_TEXTURE_1D 130 
#define  GL_TEXTURE_2D 129 
#define  GL_TEXTURE_3D_EXT 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

void FUNC3( GLcontext *ctx, GLenum target, GLenum format,
                       GLenum type, GLvoid *table )
{
   if (FUNC0(ctx)) {
      FUNC1( ctx, GL_INVALID_OPERATION, "glGetBooleanv" );
      return;
   }

   switch (target) {
      case GL_TEXTURE_1D:
         break;
      case GL_TEXTURE_2D:
         break;
      case GL_TEXTURE_3D_EXT:
         break;
      default:
         FUNC1(ctx, GL_INVALID_ENUM, "glGetColorTableEXT(target)");
         return;
   }

   FUNC2(ctx, "glGetColorTableEXT not implemented!");
}