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
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(void)
{
    const char *p = "1234567890123456789012345678901234567890123456789012";
    const char *q = "1234567890klmnopqrs01234567890EFGHIJKLM0123456789XYZ";
    const char *r = "1234567890123456789012345678901234567890123456789012"
                    "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXY+"
                    "12345678901234567890123ABC78901234567890123456789012";
    const char *s = "1234567890123456789012345678901234567890123456789012"
                    "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXY-"
                    "1234567890123456789012345678901234567890123456789012"
                    "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";

    return FUNC0(0, FUNC2(p,  q))
           & FUNC0(0, FUNC2(q, r))
           & FUNC0(0, FUNC2(r, s))
           & FUNC0(0, FUNC1(r, FUNC3(r), s, FUNC3(s)));
}