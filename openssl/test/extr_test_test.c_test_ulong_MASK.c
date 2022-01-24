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
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC7(void)
{
    if (!FUNC0(1, FUNC1(919ul, 919ul))
        | !FUNC0(0, FUNC1(919ul, 10234ul))
        | !FUNC0(1, FUNC6(8190ul, 66ul))
        | !FUNC0(0, FUNC6(10555ul, 10555ul))
        | !FUNC0(1, FUNC5(10234ul, 1000000ul))
        | !FUNC0(0, FUNC5(1000000ul, 10234ul))
        | !FUNC0(1, FUNC4(10234ul, 1000000ul))
        | !FUNC0(1, FUNC4(100000ul, 100000ul))
        | !FUNC0(0, FUNC4(1000000ul, 10234ul))
        | !FUNC0(1, FUNC3(100000000ul, 22ul))
        | !FUNC0(0, FUNC3(22ul, 100000000ul))
        | !FUNC0(1, FUNC2(100000000ul, 22ul))
        | !FUNC0(1, FUNC2(10555ul, 10555ul))
        | !FUNC0(0, FUNC2(22ul, 100000000ul)))
        goto err;
    return 1;

err:
    return 0;
}