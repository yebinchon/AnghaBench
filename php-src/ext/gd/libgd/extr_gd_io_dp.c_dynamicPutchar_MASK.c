#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gdIOCtx {int dummy; } ;
typedef  TYPE_1__* dpIOCtxPtr ;
struct TYPE_2__ {int /*<<< orphan*/  dp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static void FUNC1 (struct gdIOCtx *ctx, int a)
{
	unsigned char b;
	dpIOCtxPtr dctx;

	b = a;
	dctx = (dpIOCtxPtr) ctx;

	FUNC0(dctx->dp, &b, 1);
}