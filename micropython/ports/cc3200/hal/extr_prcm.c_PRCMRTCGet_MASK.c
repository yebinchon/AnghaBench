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
 scalar_t__ FUNC0 () ; 
 unsigned short FUNC1 (unsigned long long) ; 
 unsigned long FUNC2 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 unsigned long long FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 

void FUNC7(unsigned long *ulSecs, unsigned short *usMsec)
{
        unsigned long long ullMsec = 0;

        if(FUNC0()) {
                ullMsec  = FUNC5(FUNC4(),
                                          FUNC3());
                ullMsec += FUNC6();
        }

        *ulSecs = FUNC2(ullMsec);
        *usMsec = FUNC1(ullMsec);

        return;
}