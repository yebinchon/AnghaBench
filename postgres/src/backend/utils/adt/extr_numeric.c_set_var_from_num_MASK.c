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
struct TYPE_4__ {int /*<<< orphan*/  digits; int /*<<< orphan*/  dscale; int /*<<< orphan*/  sign; int /*<<< orphan*/  weight; } ;
typedef  TYPE_1__ NumericVar ;
typedef  int /*<<< orphan*/  NumericDigit ;
typedef  int /*<<< orphan*/  Numeric ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(Numeric num, NumericVar *dest)
{
	int			ndigits;

	ndigits = FUNC2(num);

	FUNC5(dest, ndigits);

	dest->weight = FUNC4(num);
	dest->sign = FUNC3(num);
	dest->dscale = FUNC1(num);

	FUNC6(dest->digits, FUNC0(num), ndigits * sizeof(NumericDigit));
}