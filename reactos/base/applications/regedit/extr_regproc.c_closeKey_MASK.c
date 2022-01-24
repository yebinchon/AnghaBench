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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * currentKeyHandle ; 
 int /*<<< orphan*/  currentKeyName ; 

__attribute__((used)) static void FUNC3(void)
{
    if (currentKeyHandle)
    {
        FUNC1(FUNC0(), 0, currentKeyName);
        FUNC2(currentKeyHandle);
        currentKeyHandle = NULL;
    }
}