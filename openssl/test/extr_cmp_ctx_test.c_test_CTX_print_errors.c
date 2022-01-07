
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXECUTE_TEST (int ,int ) ;
 int OSSL_CMP_CTX_TEST_FIXTURE ;
 int SETUP_TEST_FIXTURE (int ,int ) ;
 int execute_CTX_print_errors_test ;
 int result ;
 int set_up ;
 int tear_down ;

__attribute__((used)) static int test_CTX_print_errors(void)
{
    SETUP_TEST_FIXTURE(OSSL_CMP_CTX_TEST_FIXTURE, set_up);
    EXECUTE_TEST(execute_CTX_print_errors_test, tear_down);
    return result;
}
