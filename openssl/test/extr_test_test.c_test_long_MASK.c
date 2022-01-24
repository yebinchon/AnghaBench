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
 int /*<<< orphan*/  FUNC1 (long,long) ; 
 int /*<<< orphan*/  FUNC2 (long,long) ; 
 int /*<<< orphan*/  FUNC3 (long,long) ; 
 int /*<<< orphan*/  FUNC4 (long,long) ; 
 int /*<<< orphan*/  FUNC5 (long,long) ; 
 int /*<<< orphan*/  FUNC6 (long,long) ; 

__attribute__((used)) static int FUNC7(void)
{
    if (!FUNC0(1, FUNC1(123l, 123l))
        | !FUNC0(0, FUNC1(123l, -123l))
        | !FUNC0(1, FUNC6(123l, 500l))
        | !FUNC0(0, FUNC6(1000l, 1000l))
        | !FUNC0(1, FUNC5(-8923l, 102934563l))
        | !FUNC0(0, FUNC5(102934563l, -8923l))
        | !FUNC0(1, FUNC4(-8923l, 102934563l))
        | !FUNC0(1, FUNC4(12345l, 12345l))
        | !FUNC0(0, FUNC4(102934563l, -8923l))
        | !FUNC0(1, FUNC3(84325677l, 12345l))
        | !FUNC0(0, FUNC3(12345l, 84325677l))
        | !FUNC0(1, FUNC2(84325677l, 12345l))
        | !FUNC0(1, FUNC2(465869l, 465869l))
        | !FUNC0(0, FUNC2(12345l, 84325677l)))
        goto err;
    return 1;

err:
    return 0;
}