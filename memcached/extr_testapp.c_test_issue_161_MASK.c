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
typedef  enum test_return { ____Placeholder_test_return } test_return ;

/* Variables and functions */
 int TEST_PASS ; 
 int FUNC0 (int) ; 

__attribute__((used)) static enum test_return FUNC1(void)
{
    enum test_return ret = FUNC0(1);
    if (ret == TEST_PASS) {
        ret = FUNC0(512);
    }

    return ret;
}