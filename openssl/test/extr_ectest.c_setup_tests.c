
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int) ;
 int ADD_TEST (int ) ;
 int EC_get_builtin_curves (int *,int) ;
 int * OPENSSL_malloc (int) ;
 int OSSL_NELEM (int ) ;
 int TEST_ptr (int *) ;
 int TEST_true (int) ;
 int cardinality_test ;
 int char2_curve_test ;
 int char2_curve_tests ;
 int char2_field_tests ;
 int check_ec_key_field_public_range_test ;
 int check_named_curve_from_ecparameters ;
 int check_named_curve_lookup_test ;
 int check_named_curve_test ;
 int cofactor_range_test ;
 int crv_len ;
 int * curves ;
 int ec_point_hex2point_test ;
 int group_field_test ;
 int internal_curve_test ;
 int internal_curve_test_method ;
 int nistp_single_test ;
 int nistp_tests_params ;
 int parameter_test ;
 int prime_field_tests ;
 int underflow_test ;

int setup_tests(void)
{

    crv_len = EC_get_builtin_curves(((void*)0), 0);
    if (!TEST_ptr(curves = OPENSSL_malloc(sizeof(*curves) * crv_len))
        || !TEST_true(EC_get_builtin_curves(curves, crv_len)))
        return 0;

    ADD_TEST(parameter_test);
    ADD_TEST(cofactor_range_test);
    ADD_ALL_TESTS(cardinality_test, crv_len);
    ADD_TEST(prime_field_tests);

    ADD_TEST(char2_field_tests);
    ADD_ALL_TESTS(char2_curve_test, OSSL_NELEM(char2_curve_tests));


    ADD_ALL_TESTS(nistp_single_test, OSSL_NELEM(nistp_tests_params));
    ADD_TEST(underflow_test);

    ADD_ALL_TESTS(internal_curve_test, crv_len);
    ADD_ALL_TESTS(internal_curve_test_method, crv_len);
    ADD_TEST(group_field_test);
    ADD_ALL_TESTS(check_named_curve_test, crv_len);
    ADD_ALL_TESTS(check_named_curve_lookup_test, crv_len);
    ADD_ALL_TESTS(check_ec_key_field_public_range_test, crv_len);
    ADD_ALL_TESTS(check_named_curve_from_ecparameters, crv_len);
    ADD_ALL_TESTS(ec_point_hex2point_test, crv_len);

    return 1;
}
