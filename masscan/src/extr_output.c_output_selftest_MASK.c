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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC3 (char*,char*) ; 

int
FUNC4(void)
{
    char *f;

    f = FUNC2("foo.bar", 1);
    if (FUNC3(f, "foo.01.bar") != 0) {
        FUNC0(stderr, "output: failed selftest\n");
        return 1;
    }
    FUNC1(f);

    f = FUNC2("foo.b/ar", 2);
    if (FUNC3(f, "foo.b/ar.02") != 0) {
        FUNC0(stderr, "output: failed selftest\n");
        return 1;
    }
    FUNC1(f);

    f = FUNC2(".foobar", 3);
    if (FUNC3(f, ".03.foobar") != 0) {
        FUNC0(stderr, "output: failed selftest\n");
        return 1;
    }
    FUNC1(f);

    return 0;
}