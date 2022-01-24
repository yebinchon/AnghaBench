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
 int /*<<< orphan*/  CONSTTIME_FALSE_8 ; 
 int /*<<< orphan*/  CONSTTIME_TRUE_8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int* test_values_8 ; 

__attribute__((used)) static int FUNC2(int i)
{
    unsigned int a = test_values_8[i];

    if (a == 0 && !FUNC0(FUNC1(a), CONSTTIME_TRUE_8))
        return 0;
    if (a != 0 && !FUNC0(FUNC1(a), CONSTTIME_FALSE_8))
        return 0;
    return 1;
}