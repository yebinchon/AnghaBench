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
 int FUNC0 (char const**) ; 
 int /*<<< orphan*/  MP_CMD_MAX_ARGS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(js_State *J)
{
    const char *argv[MP_CMD_MAX_ARGS + 1];
    int length = FUNC3(J) - 1;
    if (length >= FUNC0(argv))
        FUNC2(J, "Too many arguments");

    for (int i = 0; i < length; i++)
        argv[i] = FUNC4(J, 1 + i);
    argv[length] = NULL;
    FUNC6(J, FUNC5(FUNC1(J), argv));
}