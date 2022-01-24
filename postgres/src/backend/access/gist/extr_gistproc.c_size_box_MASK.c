#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  double float8 ;
struct TYPE_6__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_5__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_7__ {TYPE_2__ low; TYPE_1__ high; } ;
typedef  TYPE_3__ BOX ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static float8
FUNC5(const BOX *box)
{
	/*
	 * Check for zero-width cases.  Note that we define the size of a zero-
	 * by-infinity box as zero.  It's important to special-case this somehow,
	 * as naively multiplying infinity by zero will produce NaN.
	 *
	 * The less-than cases should not happen, but if they do, say "zero".
	 */
	if (FUNC0(box->high.x, box->low.x) ||
		FUNC0(box->high.y, box->low.y))
		return 0.0;

	/*
	 * We treat NaN as larger than +Infinity, so any distance involving a NaN
	 * and a non-NaN is infinite.  Note the previous check eliminated the
	 * possibility that the low fields are NaNs.
	 */
	if (FUNC4(box->high.x) || FUNC4(box->high.y))
		return FUNC3();
	return FUNC2(FUNC1(box->high.x, box->low.x),
					  FUNC1(box->high.y, box->low.y));
}