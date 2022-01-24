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
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  INT_MIN ; 
 scalar_t__ LONG_MAX ; 
 int /*<<< orphan*/  LONG_MIN ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(void)
{
    /* Check that unsigned-to-signed conversions preserve bit patterns */
    if (!FUNC0((int)((unsigned int)INT_MAX + 1), INT_MIN)
        || !FUNC1((long)((unsigned long)LONG_MAX + 1), LONG_MIN))
        return 0;
    return 1;
}