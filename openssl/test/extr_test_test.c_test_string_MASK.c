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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static int FUNC3(void)
{
    static char buf[] = "abc";

    if (!FUNC0(1, FUNC1(NULL, NULL))
        | !FUNC0(1, FUNC1("abc", buf))
        | !FUNC0(0, FUNC1("abc", NULL))
        | !FUNC0(0, FUNC1("abc", ""))
        | !FUNC0(0, FUNC1(NULL, buf))
        | !FUNC0(0, FUNC2(NULL, NULL))
        | !FUNC0(0, FUNC1("", NULL))
        | !FUNC0(0, FUNC1(NULL, ""))
        | !FUNC0(0, FUNC2("", ""))
        | !FUNC0(0, FUNC1("\1\2\3\4\5", "\1x\3\6\5"))
        | !FUNC0(0, FUNC2("abc", buf))
        | !FUNC0(1, FUNC2("abc", NULL))
        | !FUNC0(1, FUNC2(NULL, buf))
        | !FUNC0(0, FUNC1("abcdef", "abcdefghijk")))
        goto err;
    return 1;

err:
    return 0;
}