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
typedef  int /*<<< orphan*/  af_CFunction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(js_State *J)
{
    // The target function is at the "af_" property of this function instance.
    FUNC0(J);
    FUNC1(J, -1, "af_");
    af_CFunction fn = (af_CFunction)FUNC4(J, -1, "af_fn");
    FUNC2(J, 2);

    void *af = FUNC7(NULL);
    int r = FUNC5(J, fn, af);
    FUNC6(af);
    if (r)
        FUNC3(J);
}