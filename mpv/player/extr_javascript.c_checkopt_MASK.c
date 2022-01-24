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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 char const* FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 

__attribute__((used)) static int FUNC4(js_State *J, int idx, const char *def, const char *opts[],
                    const char *desc)
{
    const char *opt = FUNC1(J, idx) ? def : FUNC2(J, idx);
    for (int i = 0; opts[i]; i++) {
        if (FUNC3(opt, opts[i]) == 0)
            return i;
    }
    FUNC0(J, "Invalid %s '%s'", desc, opt);
}