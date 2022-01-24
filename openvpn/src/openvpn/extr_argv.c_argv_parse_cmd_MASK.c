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
struct gc_arena {int dummy; } ;
struct argv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_ARGV_PARSE_CMD ; 
 int /*<<< orphan*/  MAX_PARMS ; 
 int /*<<< orphan*/  FUNC0 (struct argv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct argv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct argv*) ; 
 int /*<<< orphan*/  FUNC3 (struct gc_arena*) ; 
 struct gc_arena FUNC4 () ; 
 int FUNC5 (char const*,char**,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *) ; 

void
FUNC7(struct argv *a, const char *s)
{
    int nparms;
    char *parms[MAX_PARMS + 1];
    struct gc_arena gc = FUNC4();

    FUNC2(a);
    FUNC1(a, 1); /* ensure trailing NULL */

    nparms = FUNC5(s, parms, MAX_PARMS, "SCRIPT-ARGV", 0, D_ARGV_PARSE_CMD, &gc);
    if (nparms)
    {
        int i;
        for (i = 0; i < nparms; ++i)
        {
            FUNC0(a, FUNC6(parms[i], NULL));
        }
    }
    else
    {
        FUNC0(a, FUNC6(s, NULL));
    }

    FUNC3(&gc);
}