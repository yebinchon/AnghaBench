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
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 double FUNC4 (double,double) ; 

__attribute__((used)) static int FUNC5(lua_State* L) {
	if (!FUNC2(L, 2)) {
		return FUNC1(L, "wrong arg range");
	}
	int32_t P = FUNC0(L, 1);
	int32_t qnh = FUNC0(L, 2);
	double h = (1.0 - FUNC4((double)P/(double)qnh, 1.0/5.25588)) / 2.25577e-5 * 100.0;

	FUNC3(L, (int32_t)(h + (((h<0)?-1:(h>0)) * 0.5)));
	return 1;
}