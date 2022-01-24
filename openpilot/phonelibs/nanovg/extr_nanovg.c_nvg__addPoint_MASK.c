#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_1__* cache; int /*<<< orphan*/  distTol; } ;
struct TYPE_14__ {scalar_t__ count; } ;
struct TYPE_13__ {float x; float y; int flags; } ;
struct TYPE_12__ {scalar_t__ npoints; int cpoints; TYPE_2__* points; } ;
typedef  TYPE_2__ NVGpoint ;
typedef  TYPE_3__ NVGpath ;
typedef  TYPE_4__ NVGcontext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC1 (TYPE_4__*) ; 
 TYPE_2__* FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (float,float,float,float,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int) ; 

__attribute__((used)) static void FUNC5(NVGcontext* ctx, float x, float y, int flags)
{
	NVGpath* path = FUNC1(ctx);
	NVGpoint* pt;
	if (path == NULL) return;

	if (path->count > 0 && ctx->cache->npoints > 0) {
		pt = FUNC2(ctx);
		if (FUNC3(pt->x,pt->y, x,y, ctx->distTol)) {
			pt->flags |= flags;
			return;
		}
	}

	if (ctx->cache->npoints+1 > ctx->cache->cpoints) {
		NVGpoint* points;
		int cpoints = ctx->cache->npoints+1 + ctx->cache->cpoints/2;
		points = (NVGpoint*)FUNC4(ctx->cache->points, sizeof(NVGpoint)*cpoints);
		if (points == NULL) return;
		ctx->cache->points = points;
		ctx->cache->cpoints = cpoints;
	}

	pt = &ctx->cache->points[ctx->cache->npoints];
	FUNC0(pt, 0, sizeof(*pt));
	pt->x = x;
	pt->y = y;
	pt->flags = (unsigned char)flags;

	ctx->cache->npoints++;
	path->count++;
}