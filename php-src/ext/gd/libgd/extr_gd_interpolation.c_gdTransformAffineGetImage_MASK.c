#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gdRectPtr ;
struct TYPE_18__ {scalar_t__ y; scalar_t__ x; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  TYPE_1__ gdRect ;
typedef  TYPE_3__* gdImagePtr ;
struct TYPE_19__ {int saveAlphaFlag; int /*<<< orphan*/  trueColor; } ;

/* Variables and functions */
 int GD_FALSE ; 
 int GD_TRUE ; 
 int /*<<< orphan*/  FUNC0 (double*,double const*,double*) ; 
 int /*<<< orphan*/  FUNC1 (double*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__* const) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__* const) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__* const) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,double const*,TYPE_1__*) ; 
 int FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__* const,TYPE_1__*,double*) ; 

int FUNC10(gdImagePtr *dst,
		  const gdImagePtr src,
		  gdRectPtr src_area,
		  const double affine[6])
{
	int res;
	double m[6];
	gdRect bbox;
	gdRect area_full;

	if (src_area == NULL) {
		area_full.x = 0;
		area_full.y = 0;
		area_full.width  = FUNC6(src);
		area_full.height = FUNC7(src);
		src_area = &area_full;
	}

	FUNC8(src_area, affine, &bbox);

	*dst = FUNC3(bbox.width, bbox.height);
	if (*dst == NULL) {
		return GD_FALSE;
	}
	(*dst)->saveAlphaFlag = 1;

	if (!src->trueColor) {
		FUNC5(src);
	}

	/* Translate to dst origin (0,0) */
	FUNC1(m, -bbox.x, -bbox.y);
	FUNC0(m, affine, m);

	FUNC2(*dst, 0);

	res = FUNC9(*dst,
		  0,0,
		  src,
		  src_area,
		  m);

	if (res != GD_TRUE) {
		FUNC4(*dst);
		dst = NULL;
		return GD_FALSE;
	} else {
		return GD_TRUE;
	}
}