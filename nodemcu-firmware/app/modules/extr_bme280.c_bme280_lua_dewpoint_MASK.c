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
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 double const FUNC0 (double) ; 
 double FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(lua_State* L) {
	if (!FUNC3(L, 2)) {
		return FUNC2(L, "wrong arg range");
	}
	double H = FUNC1(L, 1)/100000.0;
	double T = FUNC1(L, 2)/100.0;

	const double c243 = 243.5;
	const double c17 = 17.67;
	double c = FUNC0(H) + ((c17 * T) / (c243 + T));
	double d = (c243 * c)/(c17 - c) * 100.0;

	FUNC4(L, (int32_t)(d + (((d<0)?-1:(d>0)) * 0.5)));
	return 1;
}