#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  dscale; } ;
typedef  TYPE_1__ NumericVar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*,TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5(const NumericVar *var1, const NumericVar *var2, NumericVar *result)
{
	NumericVar	tmp;

	FUNC2(&tmp);

	/* ---------
	 * We do this using the equation
	 *		mod(x,y) = x - trunc(x/y)*y
	 * div_var can be persuaded to give us trunc(x/y) directly.
	 * ----------
	 */
	FUNC0(var1, var2, &tmp, 0, false);

	FUNC3(var2, &tmp, &tmp, var2->dscale);

	FUNC4(var1, &tmp, result);

	FUNC1(&tmp);
}