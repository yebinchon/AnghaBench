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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  signed_test_values ; 
 int /*<<< orphan*/  test_32values ; 
 int /*<<< orphan*/  test_64values ; 
 int /*<<< orphan*/  test_8values ; 
 int /*<<< orphan*/  test_binops ; 
 int /*<<< orphan*/  test_binops_8 ; 
 int /*<<< orphan*/  test_binops_s ; 
 int /*<<< orphan*/  test_is_zero ; 
 int /*<<< orphan*/  test_is_zero_32 ; 
 int /*<<< orphan*/  test_is_zero_8 ; 
 int /*<<< orphan*/  test_is_zero_s ; 
 int /*<<< orphan*/  test_signed ; 
 int /*<<< orphan*/  test_sizeofs ; 
 int /*<<< orphan*/  test_values ; 
 int /*<<< orphan*/  test_values_32 ; 
 int /*<<< orphan*/  test_values_64 ; 
 int /*<<< orphan*/  test_values_8 ; 
 int /*<<< orphan*/  test_values_s ; 

int FUNC3(void)
{
    FUNC1(test_sizeofs);
    FUNC0(test_is_zero, FUNC2(test_values));
    FUNC0(test_is_zero_8, FUNC2(test_values_8));
    FUNC0(test_is_zero_32, FUNC2(test_values_32));
    FUNC0(test_is_zero_s, FUNC2(test_values_s));
    FUNC0(test_binops, FUNC2(test_values));
    FUNC0(test_binops_8, FUNC2(test_values_8));
    FUNC0(test_binops_s, FUNC2(test_values_s));
    FUNC0(test_signed, FUNC2(signed_test_values));
    FUNC0(test_8values, FUNC2(test_values_8));
    FUNC0(test_32values, FUNC2(test_values_32));
    FUNC0(test_64values, FUNC2(test_values_64));
    return 1;
}