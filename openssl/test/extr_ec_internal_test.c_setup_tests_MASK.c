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
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int crv_len ; 
 int /*<<< orphan*/ * curves ; 
 int /*<<< orphan*/  field_tests_default ; 
 int /*<<< orphan*/  field_tests_ec2_simple ; 
 int /*<<< orphan*/  field_tests_ecp_mont ; 
 int /*<<< orphan*/  field_tests_ecp_simple ; 

int FUNC6(void)
{
    crv_len = FUNC2(NULL, 0);
    if (!FUNC4(curves = FUNC3(sizeof(*curves) * crv_len))
        || !FUNC5(FUNC2(curves, crv_len)))
        return 0;

    FUNC1(field_tests_ecp_simple);
    FUNC1(field_tests_ecp_mont);
#ifndef OPENSSL_NO_EC2M
    FUNC1(field_tests_ec2_simple);
#endif
    FUNC0(field_tests_default, crv_len);
    return 1;
}