#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  mp_result ;
typedef  int /*<<< orphan*/ * mp_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  MP_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

mp_result
FUNC9(mp_int a, mp_int b, mp_int c)
{
	FUNC4(a != NULL && b != NULL && c != NULL);

	/*
	 * Since a * b = gcd(a, b) * lcm(a, b), we can compute lcm(a, b) = (a /
	 * gcd(a, b)) * b.
	 *
	 * This formulation insures everything works even if the input variables
	 * share space.
	 */
	FUNC1(1);
	FUNC2(FUNC7(a, b, FUNC3(0)));
	FUNC2(FUNC6(a, FUNC3(0), FUNC3(0), NULL));
	FUNC2(FUNC8(FUNC3(0), b, FUNC3(0)));
	FUNC2(FUNC5(FUNC3(0), c));

	FUNC0();
	return MP_OK;
}