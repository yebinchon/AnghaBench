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
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ ULONG_MAX ; 

__attribute__((used)) static int FUNC2(void)
{
    char buf[80];

    /* Test excessively big number. Should fail */
    if (!FUNC1(FUNC0(buf, sizeof(buf),
                                  "%f\n", 2 * (double)ULONG_MAX), -1))
        return 0;
    return 1;
}