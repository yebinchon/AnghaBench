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
struct TYPE_6__ {double Size; } ;
struct TYPE_7__ {int /*<<< orphan*/  NewState; TYPE_1__ Point; } ;
typedef  double GLfloat ;
typedef  TYPE_2__ GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  GL_INVALID_OPERATION ; 
 int /*<<< orphan*/  GL_INVALID_VALUE ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  NEW_RASTER_OPS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 

void FUNC2( GLcontext *ctx, GLfloat size )
{
   if (size<=0.0) {
      FUNC1( ctx, GL_INVALID_VALUE, "glPointSize" );
      return;
   }
   if (FUNC0(ctx)) {
      FUNC1( ctx, GL_INVALID_OPERATION, "glPointSize" );
      return;
   }
   ctx->Point.Size = size;
   ctx->NewState |= NEW_RASTER_OPS;
}