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
typedef  scalar_t__ LONG_DOUBLE ;

/* Variables and functions */
 double FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (char*,char**) ; 
 scalar_t__ FUNC7 (char*,char**) ; 

__attribute__((used)) static void FUNC8(void **state)
{
    (void)state;
    char *values[] = {
        "1.2345678",
        "-35.6",
        "0.00123",
        "23842384234234.2",
        ".1",
        "1.2e-10",
        "hello",
        "1wrong",
        "nan",
        "inf",
        NULL
    };

    for (int i = 0; values[i]; i++) {
        char *e_mine = "hello", *e_sys = "world";
        LONG_DOUBLE mine = FUNC6(values[i], &e_mine);
        LONG_DOUBLE sys = FUNC7(values[i], &e_sys);

        if (FUNC5(mine))
            FUNC3(FUNC5(sys));
        else if (FUNC4(mine))
            FUNC3(FUNC4(sys));
        else if (mine != sys)
            FUNC1(FUNC0(mine - sys) > 0.000001);

        FUNC2(e_mine, e_sys);
    }
}