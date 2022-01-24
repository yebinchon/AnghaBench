#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct gl_texture_object {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  TexObjects; } ;
struct TYPE_6__ {TYPE_3__* Shared; } ;
typedef  size_t GLuint ;
typedef  size_t GLsizei ;
typedef  TYPE_1__ GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  GL_INVALID_OPERATION ; 
 int /*<<< orphan*/  GL_INVALID_VALUE ; 
 size_t FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 struct gl_texture_object* FUNC2 (TYPE_3__*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 

void FUNC4( GLcontext *ctx, GLsizei n, GLuint *texName )
{
   GLuint first, i;

   if (FUNC1(ctx)) {
      FUNC3( ctx, GL_INVALID_OPERATION, "glGenTextures" );
      return;
   }
   if (n<0) {
      FUNC3( ctx, GL_INVALID_VALUE, "glGenTextures" );
      return;
   }

   first = FUNC0(ctx->Shared->TexObjects, n);

   /* Return the texture names */
   for (i=0;i<n;i++) {
      texName[i] = first + i;
   }

   /* Allocate new, empty texture objects */
   for (i=0;i<n;i++) {
      GLuint name = first + i;
      GLuint dims = 0;
      struct gl_texture_object *newTexObj = FUNC2(ctx->Shared, name, dims);
      (void)newTexObj;
   }
}