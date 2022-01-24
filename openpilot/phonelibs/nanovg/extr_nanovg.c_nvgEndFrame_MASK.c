#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  userPtr; int /*<<< orphan*/  (* renderFlush ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_11__ {size_t fontImageIdx; int* fontImages; TYPE_1__ params; } ;
struct TYPE_10__ {int /*<<< orphan*/  compositeOperation; } ;
typedef  TYPE_2__ NVGstate ;
typedef  TYPE_3__ NVGcontext ;

/* Variables and functions */
 int NVG_MAX_FONTIMAGES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int,int*,int*) ; 
 TYPE_2__* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(NVGcontext* ctx)
{
	NVGstate* state = FUNC2(ctx);
	ctx->params.renderFlush(ctx->params.userPtr, state->compositeOperation);
	if (ctx->fontImageIdx != 0) {
		int fontImage = ctx->fontImages[ctx->fontImageIdx];
		int i, j, iw, ih;
		// delete images that smaller than current one
		if (fontImage == 0)
			return;
		FUNC1(ctx, fontImage, &iw, &ih);
		for (i = j = 0; i < ctx->fontImageIdx; i++) {
			if (ctx->fontImages[i] != 0) {
				int nw, nh;
				FUNC1(ctx, ctx->fontImages[i], &nw, &nh);
				if (nw < iw || nh < ih)
					FUNC0(ctx, ctx->fontImages[i]);
				else
					ctx->fontImages[j++] = ctx->fontImages[i];
			}
		}
		// make current font image to first
		ctx->fontImages[j++] = ctx->fontImages[0];
		ctx->fontImages[0] = fontImage;
		ctx->fontImageIdx = 0;
		// clear all images after j
		for (i = j; i < NVG_MAX_FONTIMAGES; i++)
			ctx->fontImages[i] = 0;
	}
}