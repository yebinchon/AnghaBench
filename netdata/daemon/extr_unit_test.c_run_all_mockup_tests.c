
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ check_number_printing () ;
 scalar_t__ check_rrdcalc_comparisons () ;
 scalar_t__ check_strdupz_path_subpath () ;
 scalar_t__ run_test (int *) ;
 int test1 ;
 int test10 ;
 int test11 ;
 int test12 ;
 int test13 ;
 int test14 ;
 int test14b ;
 int test14c ;
 int test15 ;
 int test2 ;
 int test3 ;
 int test4 ;
 int test5 ;
 int test5b ;
 int test6 ;
 int test7 ;
 int test8 ;
 int test9 ;
 int test_variable_renames () ;

int run_all_mockup_tests(void)
{
    if(check_strdupz_path_subpath())
        return 1;

    if(check_number_printing())
        return 1;

    if(check_rrdcalc_comparisons())
        return 1;

    if(!test_variable_renames())
        return 1;

    if(run_test(&test1))
        return 1;

    if(run_test(&test2))
        return 1;

    if(run_test(&test3))
        return 1;

    if(run_test(&test4))
        return 1;

    if(run_test(&test5))
        return 1;

    if(run_test(&test5b))
        return 1;

    if(run_test(&test6))
        return 1;

    if(run_test(&test7))
        return 1;

    if(run_test(&test8))
        return 1;

    if(run_test(&test9))
        return 1;

    if(run_test(&test10))
        return 1;

    if(run_test(&test11))
        return 1;

    if(run_test(&test12))
        return 1;

    if(run_test(&test13))
        return 1;

    if(run_test(&test14))
        return 1;

    if(run_test(&test14b))
        return 1;

    if(run_test(&test14c))
        return 1;

    if(run_test(&test15))
        return 1;



    return 0;
}
