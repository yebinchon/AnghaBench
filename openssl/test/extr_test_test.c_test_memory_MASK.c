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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(void)
{
    static char buf[] = "xyz";

    if (!FUNC0(1, FUNC1(NULL, 0, NULL, 0))
        | !FUNC0(1, FUNC1(NULL, 1, NULL, 2))
        | !FUNC0(0, FUNC1(NULL, 0, "xyz", 3))
        | !FUNC0(0, FUNC1(NULL, 7, "abc", 3))
        | !FUNC0(0, FUNC2(NULL, 0, NULL, 0))
        | !FUNC0(0, FUNC1(NULL, 0, "", 0))
        | !FUNC0(0, FUNC1("", 0, NULL, 0))
        | !FUNC0(0, FUNC2("", 0, "", 0))
        | !FUNC0(0, FUNC1("xyz", 3, NULL, 0))
        | !FUNC0(0, FUNC1("xyz", 3, buf, sizeof(buf)))
        | !FUNC0(1, FUNC1("xyz", 4, buf, sizeof(buf))))
        goto err;
    return 1;

err:
    return 0;
}