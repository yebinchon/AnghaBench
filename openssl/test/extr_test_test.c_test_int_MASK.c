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
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(void)
{
    if (!FUNC0(1, FUNC1(1, 1))
        | !FUNC0(0, FUNC1(1, -1))
        | !FUNC0(1, FUNC6(1, 2))
        | !FUNC0(0, FUNC6(3, 3))
        | !FUNC0(1, FUNC5(4, 9))
        | !FUNC0(0, FUNC5(9, 4))
        | !FUNC0(1, FUNC4(4, 9))
        | !FUNC0(1, FUNC4(5, 5))
        | !FUNC0(0, FUNC4(9, 4))
        | !FUNC0(1, FUNC3(8, 5))
        | !FUNC0(0, FUNC3(5, 8))
        | !FUNC0(1, FUNC2(8, 5))
        | !FUNC0(1, FUNC2(6, 6))
        | !FUNC0(0, FUNC2(5, 8)))
        goto err;
    return 1;

err:
    return 0;
}