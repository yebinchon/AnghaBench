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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 double FUNC3 (int /*<<< orphan*/ *,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*,double) ; 
 char* FUNC6 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(js_State *J, void *af)
{
    double t = FUNC3(J, 1);
    const char *fmt = FUNC1(J, 2) ? "%H:%M:%S" : FUNC4(J, 2);
    char *r = FUNC6(af, FUNC5(fmt, t));
    if (!r)
        FUNC0(J, "Invalid time format string '%s'", fmt);
    FUNC2(J, r);
}