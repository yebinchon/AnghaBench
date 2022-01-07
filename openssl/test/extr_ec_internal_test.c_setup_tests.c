
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int) ;
 int ADD_TEST (int ) ;
 int EC_get_builtin_curves (int *,int) ;
 int * OPENSSL_malloc (int) ;
 int TEST_ptr (int *) ;
 int TEST_true (int) ;
 int crv_len ;
 int * curves ;
 int field_tests_default ;
 int field_tests_ec2_simple ;
 int field_tests_ecp_mont ;
 int field_tests_ecp_simple ;

int setup_tests(void)
{
    crv_len = EC_get_builtin_curves(((void*)0), 0);
    if (!TEST_ptr(curves = OPENSSL_malloc(sizeof(*curves) * crv_len))
        || !TEST_true(EC_get_builtin_curves(curves, crv_len)))
        return 0;

    ADD_TEST(field_tests_ecp_simple);
    ADD_TEST(field_tests_ecp_mont);

    ADD_TEST(field_tests_ec2_simple);

    ADD_ALL_TESTS(field_tests_default, crv_len);
    return 1;
}
