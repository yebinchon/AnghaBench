
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int) ;
 int EC_get_builtin_curves (int *,int) ;
 int * OPENSSL_malloc (int) ;
 int OSSL_NELEM (int ) ;
 int TEST_note (char*) ;
 int TEST_ptr (int *) ;
 int TEST_true (int) ;
 int crv_len ;
 int * curves ;
 int ecdsa_cavs_kats ;
 int test_builtin ;
 int x9_62_tests ;

int setup_tests(void)
{




    crv_len = EC_get_builtin_curves(((void*)0), 0);
    if (!TEST_ptr(curves = OPENSSL_malloc(sizeof(*curves) * crv_len))
        || !TEST_true(EC_get_builtin_curves(curves, crv_len)))
        return 0;
    ADD_ALL_TESTS(test_builtin, crv_len);
    ADD_ALL_TESTS(x9_62_tests, OSSL_NELEM(ecdsa_cavs_kats));

    return 1;
}
