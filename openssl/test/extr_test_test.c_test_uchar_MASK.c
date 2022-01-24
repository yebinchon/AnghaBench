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
    if (!FUNC0(1, FUNC1(49, 49))
        | !FUNC0(0, FUNC1(49, 60))
        | !FUNC0(1, FUNC6(50, 2))
        | !FUNC0(0, FUNC6(66, 66))
        | !FUNC0(1, FUNC5(60, 80))
        | !FUNC0(0, FUNC5(80, 60))
        | !FUNC0(1, FUNC4(60, 80))
        | !FUNC0(1, FUNC4(78, 78))
        | !FUNC0(0, FUNC4(80, 60))
        | !FUNC0(1, FUNC3(88, 37))
        | !FUNC0(0, FUNC3(37, 88))
        | !FUNC0(1, FUNC2(88, 37))
        | !FUNC0(1, FUNC2(66, 66))
        | !FUNC0(0, FUNC2(37, 88)))
        goto err;
    return 1;

err:
    return 0;
}