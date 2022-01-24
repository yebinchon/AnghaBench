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
typedef  int int64_t ;
typedef  enum test_return { ____Placeholder_test_return } test_return ;

/* Variables and functions */
 int TEST_PASS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int*) ; 

__attribute__((used)) static enum test_return FUNC2(void) {
    int64_t val;
    FUNC0(FUNC1("123", &val));
    FUNC0(val == 123);
    FUNC0(FUNC1("+123", &val));
    FUNC0(val == 123);
    FUNC0(FUNC1("-123", &val));
    FUNC0(val == -123);
    FUNC0(!FUNC1("", &val));  // empty
    FUNC0(!FUNC1("123BOGUS", &val));  // non-numeric
    FUNC0(!FUNC1("92837498237498237498029383", &val)); // out of range
    FUNC0(!FUNC1(" issue221", &val));  // non-numeric

    // extremes:
    FUNC0(!FUNC1("18446744073709551615", &val)); // 2**64 - 1
    FUNC0(FUNC1("9223372036854775807", &val)); // 2**63 - 1
    FUNC0(val == 9223372036854775807LL);
    /*
      assert(safe_strtoll("-9223372036854775808", &val)); // -2**63
      assert(val == -9223372036854775808LL);
    */
    FUNC0(!FUNC1("-9223372036854775809", &val)); // -2**63 - 1

    // We'll allow space to terminate the string.  And leading space.
    FUNC0(FUNC1(" 123 foo", &val));
    FUNC0(val == 123);
    return TEST_PASS;
}