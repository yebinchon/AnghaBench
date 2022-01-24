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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char const* const) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int) ; 

int FUNC4(int argCount, const char** argv)
{
    const char* const exeName = argv[0];
    int argNb = 1;
    int clevel = 0;

    FUNC1(argCount >= 1);
    if (argCount < 2) return FUNC2(exeName);

    if (argv[1][0] == '-') {
        clevel = argv[1][1] - '0';
        argNb = 2;
    }

    if (argNb >= argCount) return FUNC2(exeName);

    FUNC3(argv[argNb], clevel);
    FUNC0("no pb detected \n");
    return 0;
}