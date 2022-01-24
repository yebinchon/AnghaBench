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
struct TYPE_6__ {double HitMinZ; double HitMaxZ; int /*<<< orphan*/  HitFlag; scalar_t__ NameStackDepth; } ;
struct TYPE_7__ {TYPE_1__ Select; } ;
typedef  TYPE_2__ GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  GL_INVALID_OPERATION ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 

void FUNC2( GLcontext *ctx )
{
   if (FUNC0(ctx)) {
      FUNC1( ctx, GL_INVALID_OPERATION, "glInitNames" );
   }
   ctx->Select.NameStackDepth = 0;
   ctx->Select.HitFlag = GL_FALSE;
   ctx->Select.HitMinZ = 1.0;
   ctx->Select.HitMaxZ = 0.0;
}