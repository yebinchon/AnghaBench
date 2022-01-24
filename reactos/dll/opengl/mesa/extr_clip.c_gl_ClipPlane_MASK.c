#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * ClipEquation; } ;
struct TYPE_7__ {int /*<<< orphan*/  ModelViewInv; TYPE_1__ Transform; scalar_t__ NewModelViewMatrix; } ;
typedef  size_t GLint ;
typedef  int /*<<< orphan*/  GLfloat ;
typedef  scalar_t__ GLenum ;
typedef  TYPE_2__ GLcontext ;

/* Variables and functions */
 scalar_t__ GL_CLIP_PLANE0 ; 
 int /*<<< orphan*/  GL_INVALID_ENUM ; 
 size_t MAX_CLIP_PLANES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

void FUNC3( GLcontext* ctx, GLenum plane, const GLfloat *equation )
{
   GLint p;

   p = (GLint) plane - (GLint) GL_CLIP_PLANE0;
   if (p<0 || p>=MAX_CLIP_PLANES) {
      FUNC1( ctx, GL_INVALID_ENUM, "glClipPlane" );
      return;
   }

   /*
    * The equation is transformed by the transpose of the inverse of the
    * current modelview matrix and stored in the resulting eye coordinates.
    */
   if (ctx->NewModelViewMatrix) {
      FUNC0(ctx);
   }
   FUNC2( ctx->Transform.ClipEquation[p], equation,
		        ctx->ModelViewInv );
}