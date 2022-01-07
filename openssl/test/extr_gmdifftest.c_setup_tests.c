
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int ADD_ALL_TESTS_NOSUBTEST (int ,int) ;
 int TEST_info (char*) ;
 int test_gmtime ;

int setup_tests(void)
{
    if (sizeof(time_t) < 8)
        TEST_info("Skipping; time_t is less than 64-bits");
    else
        ADD_ALL_TESTS_NOSUBTEST(test_gmtime, 1000000);
    return 1;
}
