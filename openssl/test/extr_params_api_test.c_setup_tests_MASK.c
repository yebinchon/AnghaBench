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
 int /*<<< orphan*/  raw_values ; 
 int /*<<< orphan*/  test_param_bignum ; 
 int /*<<< orphan*/  test_param_construct ; 
 int /*<<< orphan*/  test_param_int ; 
 int /*<<< orphan*/  test_param_int32 ; 
 int /*<<< orphan*/  test_param_int64 ; 
 int /*<<< orphan*/  test_param_long ; 
 int /*<<< orphan*/  test_param_real ; 
 int /*<<< orphan*/  test_param_size_t ; 
 int /*<<< orphan*/  test_param_uint ; 
 int /*<<< orphan*/  test_param_uint32 ; 
 int /*<<< orphan*/  test_param_uint64 ; 
 int /*<<< orphan*/  test_param_ulong ; 

int FUNC3(void)
{
    FUNC0(test_param_int, FUNC2(raw_values));
    FUNC0(test_param_long, FUNC2(raw_values));
    FUNC0(test_param_uint, FUNC2(raw_values));
    FUNC0(test_param_ulong, FUNC2(raw_values));
    FUNC0(test_param_int32, FUNC2(raw_values));
    FUNC0(test_param_uint32, FUNC2(raw_values));
    FUNC0(test_param_size_t, FUNC2(raw_values));
    FUNC0(test_param_int64, FUNC2(raw_values));
    FUNC0(test_param_uint64, FUNC2(raw_values));
    FUNC0(test_param_bignum, FUNC2(raw_values));
    FUNC1(test_param_real);
    FUNC1(test_param_construct);
    return 1;
}