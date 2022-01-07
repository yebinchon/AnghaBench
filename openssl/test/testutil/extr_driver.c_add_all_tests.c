
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* test_case_name; int (* param_test_fn ) (int) ;int num; int subtest; } ;


 size_t OSSL_NELEM (TYPE_1__*) ;
 TYPE_1__* all_tests ;
 int assert (int) ;
 int num_test_cases ;
 size_t num_tests ;

void add_all_tests(const char *test_case_name, int(*test_fn)(int idx),
                   int num, int subtest)
{
    assert(num_tests != OSSL_NELEM(all_tests));
    all_tests[num_tests].test_case_name = test_case_name;
    all_tests[num_tests].param_test_fn = test_fn;
    all_tests[num_tests].num = num;
    all_tests[num_tests].subtest = subtest;
    ++num_tests;
    num_test_cases += num;
}
