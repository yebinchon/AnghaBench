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
typedef  int /*<<< orphan*/  test ;
struct Range {int begin; int end; } ;

/* Variables and functions */
 int FUNC0 (struct Range) ; 
 scalar_t__ FUNC1 (char*,int,char**) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

int
FUNC4()
{
    char test[] = " test 1 ";

    FUNC3(test, sizeof(test));
    if (FUNC2(test, "test 1") != 0)
        return 1; /* failure */

    {
        struct Range range;

        range.begin = 16;
        range.end = 32-1;
        if (FUNC0(range) != 28)
            return 1;

        range.begin = 1;
        range.end = 13;
        if (FUNC0(range) != 0)
            return 1;


    }

    /* */
    {
        int argc = 6;
        char *argv[] = { "foo", "bar", "-ddd", "--readscan", "xxx", "--something" };
    
        if (FUNC1("--nothing", argc, argv))
            return 1;

        if (!FUNC1("--readscan", argc, argv))
            return 1;
    }

    return 0;
}