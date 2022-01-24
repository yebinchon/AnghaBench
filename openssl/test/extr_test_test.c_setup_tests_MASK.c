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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bn_output_tests ; 
 int /*<<< orphan*/  test_bignum ; 
 int /*<<< orphan*/  test_bn_output ; 
 int /*<<< orphan*/  test_bool ; 
 int /*<<< orphan*/  test_char ; 
 int /*<<< orphan*/  test_int ; 
 int /*<<< orphan*/  test_long ; 
 int /*<<< orphan*/  test_long_bignum ; 
 int /*<<< orphan*/  test_long_output ; 
 int /*<<< orphan*/  test_memory ; 
 int /*<<< orphan*/  test_memory_overflow ; 
 int /*<<< orphan*/  test_messages ; 
 int /*<<< orphan*/  test_output ; 
 int /*<<< orphan*/  test_pointer ; 
 int /*<<< orphan*/  test_single_eval ; 
 int /*<<< orphan*/  test_size_t ; 
 int /*<<< orphan*/  test_skip_many ; 
 int /*<<< orphan*/  test_skip_null ; 
 int /*<<< orphan*/  test_skip_one ; 
 int /*<<< orphan*/  test_string ; 
 int /*<<< orphan*/  test_time_t ; 
 int /*<<< orphan*/  test_uchar ; 
 int /*<<< orphan*/  test_uint ; 
 int /*<<< orphan*/  test_ulong ; 

int FUNC3(void)
{
    FUNC1(test_int);
    FUNC1(test_uint);
    FUNC1(test_char);
    FUNC1(test_uchar);
    FUNC1(test_long);
    FUNC1(test_ulong);
    FUNC1(test_size_t);
    FUNC1(test_time_t);
    FUNC1(test_pointer);
    FUNC1(test_bool);
    FUNC1(test_string);
    FUNC1(test_memory);
    FUNC1(test_memory_overflow);
    FUNC1(test_bignum);
    FUNC1(test_long_bignum);
    FUNC1(test_long_output);
    FUNC1(test_messages);
    FUNC1(test_single_eval);
    FUNC1(test_output);
    FUNC0(test_bn_output, FUNC2(bn_output_tests));
    FUNC1(test_skip_one);
    FUNC1(test_skip_null);
    FUNC0(test_skip_many, 3);
    return 1;
}