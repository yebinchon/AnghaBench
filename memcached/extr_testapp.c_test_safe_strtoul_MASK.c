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
typedef  int uint32_t ;
typedef  enum test_return { ____Placeholder_test_return } test_return ;

/* Variables and functions */
 int TEST_PASS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int*) ; 

__attribute__((used)) static enum test_return FUNC2(void) {
    uint32_t val;
    FUNC0(FUNC1("123", &val));
    FUNC0(val == 123);
    FUNC0(FUNC1("+123", &val));
    FUNC0(val == 123);
    FUNC0(!FUNC1("", &val));  // empty
    FUNC0(!FUNC1("123BOGUS", &val));  // non-numeric
    FUNC0(!FUNC1(" issue221", &val));  // non-numeric
    /* Not sure what it does, but this works with ICC :/
       assert(!safe_strtoul("92837498237498237498029383", &val)); // out of range
    */

    // extremes:
    FUNC0(FUNC1("4294967295", &val)); // 2**32 - 1
    FUNC0(val == 4294967295L);
    /* This actually works on 64-bit ubuntu
       assert(!safe_strtoul("4294967296", &val)); // 2**32
    */
    FUNC0(!FUNC1("-1", &val));  // negative
    return TEST_PASS;
}