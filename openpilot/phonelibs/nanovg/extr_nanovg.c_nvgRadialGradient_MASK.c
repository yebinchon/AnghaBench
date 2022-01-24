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
struct TYPE_4__ {float* xform; float* extent; float radius; void* outerColor; void* innerColor; int /*<<< orphan*/  feather; } ;
typedef  TYPE_1__ NVGpaint ;
typedef  int /*<<< orphan*/  NVGcontext ;
typedef  void* NVGcolor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (float*) ; 
 int /*<<< orphan*/  FUNC3 (float,float) ; 

NVGpaint FUNC4(NVGcontext* ctx,
								  float cx, float cy, float inr, float outr,
								  NVGcolor icol, NVGcolor ocol)
{
	NVGpaint p;
	float r = (inr+outr)*0.5f;
	float f = (outr-inr);
	FUNC0(ctx);
	FUNC1(&p, 0, sizeof(p));

	FUNC2(p.xform);
	p.xform[4] = cx;
	p.xform[5] = cy;

	p.extent[0] = r;
	p.extent[1] = r;

	p.radius = r;

	p.feather = FUNC3(1.0f, f);

	p.innerColor = icol;
	p.outerColor = ocol;

	return p;
}