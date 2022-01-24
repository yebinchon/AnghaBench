#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  p ;
struct TYPE_4__ {float* xform; float* extent; int image; int /*<<< orphan*/  outerColor; int /*<<< orphan*/  innerColor; } ;
typedef  TYPE_1__ NVGpaint ;
typedef  int /*<<< orphan*/  NVGcontext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,float) ; 
 int /*<<< orphan*/  FUNC3 (float*,float) ; 

NVGpaint FUNC4(NVGcontext* ctx,
								float cx, float cy, float w, float h, float angle,
								int image, float alpha)
{
	NVGpaint p;
	FUNC0(ctx);
	FUNC1(&p, 0, sizeof(p));

	FUNC3(p.xform, angle);
	p.xform[4] = cx;
	p.xform[5] = cy;

	p.extent[0] = w;
	p.extent[1] = h;

	p.image = image;

	p.innerColor = p.outerColor = FUNC2(1,1,1,alpha);

	return p;
}