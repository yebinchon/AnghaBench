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
 int /*<<< orphan*/  cast_test_iterations ; 
 int /*<<< orphan*/  cast_test_vector ; 
 int /*<<< orphan*/  k_len ; 

int FUNC3(void)
{
#ifndef OPENSSL_NO_CAST
    FUNC0(cast_test_vector, FUNC2(k_len));
    FUNC1(cast_test_iterations);
#endif
    return 1;
}