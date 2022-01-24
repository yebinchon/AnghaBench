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
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC7(void)
{
    if (!FUNC0(1, FUNC1(3u, 3u))
        | !FUNC0(0, FUNC1(3u, 5u))
        | !FUNC0(1, FUNC6(4u, 2u))
        | !FUNC0(0, FUNC6(6u, 6u))
        | !FUNC0(1, FUNC5(5u, 9u))
        | !FUNC0(0, FUNC5(9u, 5u))
        | !FUNC0(1, FUNC4(5u, 9u))
        | !FUNC0(1, FUNC4(7u, 7u))
        | !FUNC0(0, FUNC4(9u, 5u))
        | !FUNC0(1, FUNC3(11u, 1u))
        | !FUNC0(0, FUNC3(1u, 11u))
        | !FUNC0(1, FUNC2(11u, 1u))
        | !FUNC0(1, FUNC2(6u, 6u))
        | !FUNC0(0, FUNC2(1u, 11u)))
        goto err;
    return 1;

err:
    return 0;
}