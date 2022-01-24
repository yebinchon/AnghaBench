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
struct TYPE_5__ {TYPE_1__* cache; } ;
struct TYPE_4__ {int cverts; int /*<<< orphan*/ * verts; } ;
typedef  int /*<<< orphan*/  NVGvertex ;
typedef  TYPE_2__ NVGcontext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static NVGvertex* FUNC1(NVGcontext* ctx, int nverts)
{
	if (nverts > ctx->cache->cverts) {
		NVGvertex* verts;
		int cverts = (nverts + 0xff) & ~0xff; // Round up to prevent allocations when things change just slightly.
		verts = (NVGvertex*)FUNC0(ctx->cache->verts, sizeof(NVGvertex)*cverts);
		if (verts == NULL) return NULL;
		ctx->cache->verts = verts;
		ctx->cache->cverts = cverts;
	}

	return ctx->cache->verts;
}