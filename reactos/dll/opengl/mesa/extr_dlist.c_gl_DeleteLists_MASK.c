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
typedef  scalar_t__ GLuint ;
typedef  scalar_t__ GLsizei ;
typedef  int /*<<< orphan*/  GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  GL_INVALID_OPERATION ; 
 int /*<<< orphan*/  GL_INVALID_VALUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

void FUNC3( GLcontext *ctx, GLuint list, GLsizei range )
{
   GLuint i;

   if (FUNC0(ctx)) {
      FUNC2( ctx, GL_INVALID_OPERATION, "glDeleteLists" );
      return;
   }
   if (range<0) {
      FUNC2( ctx, GL_INVALID_VALUE, "glDeleteLists" );
      return;
   }
   for (i=list;i<list+range;i++) {
      FUNC1( ctx, i );
   }
}