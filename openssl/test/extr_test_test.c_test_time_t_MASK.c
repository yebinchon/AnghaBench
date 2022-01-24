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
typedef  int /*<<< orphan*/  time_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(void)
{
    if (!FUNC0(1, FUNC1((time_t)10, (time_t)10))
        | !FUNC0(0, FUNC1((time_t)10, (time_t)12))
        | !FUNC0(1, FUNC6((time_t)10, (time_t)12))
        | !FUNC0(0, FUNC6((time_t)24, (time_t)24))
        | !FUNC0(1, FUNC5((time_t)30, (time_t)88))
        | !FUNC0(0, FUNC5((time_t)88, (time_t)30))
        | !FUNC0(1, FUNC4((time_t)30, (time_t)88))
        | !FUNC0(1, FUNC4((time_t)33, (time_t)33))
        | !FUNC0(0, FUNC4((time_t)88, (time_t)30))
        | !FUNC0(1, FUNC3((time_t)52, (time_t)33))
        | !FUNC0(0, FUNC3((time_t)33, (time_t)52))
        | !FUNC0(1, FUNC2((time_t)52, (time_t)33))
        | !FUNC0(1, FUNC2((time_t)38, (time_t)38))
        | !FUNC0(0, FUNC2((time_t)33, (time_t)52)))
        goto err;
    return 1;

err:
    return 0;
}