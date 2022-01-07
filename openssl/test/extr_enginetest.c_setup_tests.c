
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 int TEST_note (char*) ;
 int test_engines ;
 int test_redirect ;

int setup_tests(void)
{



    ADD_TEST(test_engines);
    ADD_TEST(test_redirect);

    return 1;
}
