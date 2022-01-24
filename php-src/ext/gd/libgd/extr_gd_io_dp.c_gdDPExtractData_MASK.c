#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct gdIOCtx {int dummy; } ;
struct TYPE_4__ {int logicalSize; scalar_t__ realSize; int /*<<< orphan*/ * data; scalar_t__ freeOK; scalar_t__ dataGood; } ;
typedef  TYPE_1__ dynamicPtr ;
struct TYPE_5__ {TYPE_1__* dp; } ;
typedef  TYPE_2__ dpIOCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void * FUNC2 (struct gdIOCtx *ctx, int *size)
{
	dynamicPtr *dp;
	dpIOCtx *dctx;
	void *data;

	dctx = (dpIOCtx *) ctx;
	dp = dctx->dp;

	/* clean up the data block and return it */
	if (dp->dataGood) {
		FUNC1 (dp);
		*size = dp->logicalSize;
		data = dp->data;
	} else {
		*size = 0;
		data = NULL;
		if (dp->data != NULL && dp->freeOK) {
			FUNC0(dp->data);
		}
	}

	dp->data = NULL;
	dp->realSize = 0;
	dp->logicalSize = 0;

	return data;
}