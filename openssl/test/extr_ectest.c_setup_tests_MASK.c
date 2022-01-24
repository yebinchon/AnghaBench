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
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  cardinality_test ; 
 int /*<<< orphan*/  char2_curve_test ; 
 int /*<<< orphan*/  char2_curve_tests ; 
 int /*<<< orphan*/  char2_field_tests ; 
 int /*<<< orphan*/  check_ec_key_field_public_range_test ; 
 int /*<<< orphan*/  check_named_curve_from_ecparameters ; 
 int /*<<< orphan*/  check_named_curve_lookup_test ; 
 int /*<<< orphan*/  check_named_curve_test ; 
 int /*<<< orphan*/  cofactor_range_test ; 
 int crv_len ; 
 int /*<<< orphan*/ * curves ; 
 int /*<<< orphan*/  ec_point_hex2point_test ; 
 int /*<<< orphan*/  group_field_test ; 
 int /*<<< orphan*/  internal_curve_test ; 
 int /*<<< orphan*/  internal_curve_test_method ; 
 int /*<<< orphan*/  nistp_single_test ; 
 int /*<<< orphan*/  nistp_tests_params ; 
 int /*<<< orphan*/  parameter_test ; 
 int /*<<< orphan*/  prime_field_tests ; 
 int /*<<< orphan*/  underflow_test ; 

int FUNC7(void)
{
#ifndef OPENSSL_NO_EC
    crv_len = FUNC2(NULL, 0);
    if (!FUNC5(curves = FUNC3(sizeof(*curves) * crv_len))
        || !FUNC6(FUNC2(curves, crv_len)))
        return 0;

    FUNC1(parameter_test);
    FUNC1(cofactor_range_test);
    FUNC0(cardinality_test, crv_len);
    FUNC1(prime_field_tests);
# ifndef OPENSSL_NO_EC2M
    FUNC1(char2_field_tests);
    FUNC0(char2_curve_test, FUNC4(char2_curve_tests));
# endif
# ifndef OPENSSL_NO_EC_NISTP_64_GCC_128
    FUNC0(nistp_single_test, FUNC4(nistp_tests_params));
    FUNC1(underflow_test);
# endif
    FUNC0(internal_curve_test, crv_len);
    FUNC0(internal_curve_test_method, crv_len);
    FUNC1(group_field_test);
    FUNC0(check_named_curve_test, crv_len);
    FUNC0(check_named_curve_lookup_test, crv_len);
    FUNC0(check_ec_key_field_public_range_test, crv_len);
    FUNC0(check_named_curve_from_ecparameters, crv_len);
    FUNC0(ec_point_hex2point_test, crv_len);
#endif /* OPENSSL_NO_EC */
    return 1;
}