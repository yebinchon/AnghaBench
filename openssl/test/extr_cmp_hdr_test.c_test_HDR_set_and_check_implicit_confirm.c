
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMP_HDR_TEST_FIXTURE ;
 int EXECUTE_TEST (int ,int ) ;
 int SETUP_TEST_FIXTURE (int ,int ) ;
 int execute_HDR_set_and_check_implicitConfirm_test ;
 int result ;
 int set_up ;
 int tear_down ;

__attribute__((used)) static int test_HDR_set_and_check_implicit_confirm(void)
{
    SETUP_TEST_FIXTURE(CMP_HDR_TEST_FIXTURE, set_up);
    EXECUTE_TEST(execute_HDR_set_and_check_implicitConfirm_test, tear_down);
    return result;
}
