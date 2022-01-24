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
struct TYPE_6__ {int /*<<< orphan*/  StipplePattern; int /*<<< orphan*/  StippleFactor; } ;
struct TYPE_7__ {int /*<<< orphan*/  NewState; TYPE_1__ Line; } ;
typedef  int /*<<< orphan*/  GLushort ;
typedef  int /*<<< orphan*/  GLint ;
typedef  TYPE_2__ GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  GL_INVALID_OPERATION ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  NEW_RASTER_OPS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 

void FUNC3( GLcontext *ctx, GLint factor, GLushort pattern )
{
   if (FUNC1(ctx)) {
      FUNC2( ctx, GL_INVALID_OPERATION, "glLineStipple" );
      return;
   }
   ctx->Line.StippleFactor = FUNC0( factor, 1, 256 );
   ctx->Line.StipplePattern = pattern;
   ctx->NewState |= NEW_RASTER_OPS;
}