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
 int /*<<< orphan*/  FUNC1 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC6 (size_t,size_t) ; 

__attribute__((used)) static int FUNC7(void)
{
    if (!FUNC0(1, FUNC1((size_t)10, (size_t)10))
        | !FUNC0(0, FUNC1((size_t)10, (size_t)12))
        | !FUNC0(1, FUNC6((size_t)10, (size_t)12))
        | !FUNC0(0, FUNC6((size_t)24, (size_t)24))
        | !FUNC0(1, FUNC5((size_t)30, (size_t)88))
        | !FUNC0(0, FUNC5((size_t)88, (size_t)30))
        | !FUNC0(1, FUNC4((size_t)30, (size_t)88))
        | !FUNC0(1, FUNC4((size_t)33, (size_t)33))
        | !FUNC0(0, FUNC4((size_t)88, (size_t)30))
        | !FUNC0(1, FUNC3((size_t)52, (size_t)33))
        | !FUNC0(0, FUNC3((size_t)33, (size_t)52))
        | !FUNC0(1, FUNC2((size_t)52, (size_t)33))
        | !FUNC0(1, FUNC2((size_t)38, (size_t)38))
        | !FUNC0(0, FUNC2((size_t)33, (size_t)52)))
        goto err;
    return 1;

err:
    return 0;
}