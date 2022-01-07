
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int ) ;
 int OSSL_NELEM (int ) ;
 int test_poly1305 ;
 int tests ;

int setup_tests(void)
{
    ADD_ALL_TESTS(test_poly1305, OSSL_NELEM(tests));
    return 1;
}
