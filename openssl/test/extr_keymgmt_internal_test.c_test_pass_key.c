
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXECUTE_TEST (int ,int ) ;
 int FIXTURE ;
 int SETUP_TEST_FIXTURE (int ,int ) ;
 int result ;
 int set_up ;
 int tear_down ;
 int * tests ;

__attribute__((used)) static int test_pass_key(int n)
{
    SETUP_TEST_FIXTURE(FIXTURE, set_up);
    EXECUTE_TEST(tests[n], tear_down);
    return result;
}
