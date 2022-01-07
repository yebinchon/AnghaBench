
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 int TEST_note (char*) ;
 int dh_test ;
 int rfc5114_test ;
 int rfc7919_test ;

int setup_tests(void)
{



    ADD_TEST(dh_test);
    ADD_TEST(rfc5114_test);
    ADD_TEST(rfc7919_test);

    return 1;
}
