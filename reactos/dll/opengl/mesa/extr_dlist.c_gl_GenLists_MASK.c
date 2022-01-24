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
struct TYPE_7__ {TYPE_1__* Shared; } ;
struct TYPE_6__ {int /*<<< orphan*/  DisplayList; } ;
typedef  scalar_t__ GLuint ;
typedef  scalar_t__ GLsizei ;
typedef  TYPE_2__ GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  GL_INVALID_OPERATION ; 
 int /*<<< orphan*/  GL_INVALID_VALUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

GLuint FUNC5( GLcontext *ctx, GLsizei range )
{
   GLuint base;

   if (FUNC2(ctx)) {
      FUNC3( ctx, GL_INVALID_OPERATION, "glGenLists" );
      return 0;
   }
   if (range<0) {
      FUNC3( ctx, GL_INVALID_VALUE, "glGenLists" );
      return 0;
   }
   if (range==0) {
      return 0;
   }

   base = FUNC0(ctx->Shared->DisplayList, range);
   if (base) {
      /* reserve the list IDs by with empty/dummy lists */
      GLuint i;
      for (i=0; i<range; i++) {
         FUNC1(ctx->Shared->DisplayList, base+i, FUNC4());
      }
   }
   return base;
}