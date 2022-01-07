
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int version_testdata ;
typedef int version_test ;


 int ADD_ALL_TESTS (int ,int) ;
 int test_set_min_max_version ;

int setup_tests(void)
{
    ADD_ALL_TESTS(test_set_min_max_version, sizeof(version_testdata) / sizeof(version_test));
    return 1;
}
