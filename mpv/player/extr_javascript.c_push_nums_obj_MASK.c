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
typedef  int /*<<< orphan*/  js_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,double const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char const* const) ; 

__attribute__((used)) static void FUNC3(js_State *J, const char * const names[],
                          const double vals[])
{
    FUNC0(J);
    for (int i = 0; names[i]; i++) {
        FUNC1(J, vals[i]);
        FUNC2(J, -2, names[i]);
    }
}