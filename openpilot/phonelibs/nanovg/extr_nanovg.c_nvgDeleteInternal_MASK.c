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
struct TYPE_6__ {int /*<<< orphan*/  userPtr; int /*<<< orphan*/  (* renderDelete ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {scalar_t__* fontImages; TYPE_1__ params; scalar_t__ fs; int /*<<< orphan*/ * cache; struct TYPE_7__* commands; } ;
typedef  TYPE_2__ NVGcontext ;

/* Variables and functions */
 int NVG_MAX_FONTIMAGES ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(NVGcontext* ctx)
{
	int i;
	if (ctx == NULL) return;
	if (ctx->commands != NULL) FUNC1(ctx->commands);
	if (ctx->cache != NULL) FUNC3(ctx->cache);

	if (ctx->fs)
		FUNC0(ctx->fs);

	for (i = 0; i < NVG_MAX_FONTIMAGES; i++) {
		if (ctx->fontImages[i] != 0) {
			FUNC2(ctx, ctx->fontImages[i]);
			ctx->fontImages[i] = 0;
		}
	}

	if (ctx->params.renderDelete != NULL)
		ctx->params.renderDelete(ctx->params.userPtr);

	FUNC1(ctx);
}