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
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char const*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void)
{
    int r;
    BIGNUM *a = NULL, *b = NULL, *c = NULL, *d = NULL;
    const char as[] = "1234567890123456789012345678901234567890123456789012"
                      "1234567890123456789012345678901234567890123456789012"
                      "1234567890123456789012345678901234567890123456789012"
                      "1234567890123456789012345678901234567890123456789012"
                      "1234567890123456789012345678901234567890123456789012"
                      "1234567890123456789012345678901234567890123456789012"
                      "FFFFFF";
    const char bs[] = "1234567890123456789012345678901234567890123456789012"
                      "1234567890123456789012345678901234567890123456789013"
                      "987657";
    const char cs[] = "-"        /* 64 characters plus sign */
                      "123456789012345678901234567890"
                      "123456789012345678901234567890"
                      "ABCD";
    const char ds[] = "-"        /* 63 characters plus sign */
                      "23456789A123456789B123456789C"
                      "123456789D123456789E123456789F"
                      "ABCD";

    r = FUNC5(FUNC1(&a, as))
        && FUNC5(FUNC1(&b, bs))
        && FUNC5(FUNC1(&c, cs))
        && FUNC5(FUNC1(&d, ds))
        && (FUNC2(0, FUNC3(a, b))
            & FUNC2(0, FUNC3(b, a))
            & FUNC2(0, FUNC3(b, NULL))
            & FUNC2(0, FUNC3(NULL, a))
            & FUNC2(1, FUNC4(a, NULL))
            & FUNC2(0, FUNC3(c, d)));
    FUNC0(a);
    FUNC0(b);
    FUNC0(c);
    FUNC0(d);
    return r;
}