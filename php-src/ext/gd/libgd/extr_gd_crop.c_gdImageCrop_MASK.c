#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gdRectPtr ;
typedef  TYPE_2__* gdImagePtr ;
struct TYPE_13__ {int alphaBlendingFlag; } ;
struct TYPE_12__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;

/* Variables and functions */
 int gdEffectReplace ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 

gdImagePtr FUNC5(gdImagePtr src, const gdRectPtr crop)
{
	gdImagePtr dst;
	int alphaBlendingFlag;

	if (FUNC4(src)) {
		dst = FUNC3(crop->width, crop->height);
	} else {
		dst = FUNC2(crop->width, crop->height);
	}
	if (!dst) return NULL;
	alphaBlendingFlag = dst->alphaBlendingFlag;
	FUNC0(dst, gdEffectReplace);
	FUNC1(dst, src, 0, 0, crop->x, crop->y, crop->width, crop->height);
	FUNC0(dst, alphaBlendingFlag);

	return dst;
}