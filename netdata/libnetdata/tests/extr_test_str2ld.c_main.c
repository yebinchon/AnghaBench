
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CMUnitTest {int dummy; } ;


 int cmocka_run_group_tests_name (char*,struct CMUnitTest const*,int *,int *) ;
 struct CMUnitTest const cmocka_unit_test (int ) ;
 int test_str2ld ;

int main(void)
{
    const struct CMUnitTest tests[] = {
        cmocka_unit_test(test_str2ld)
    };

    return cmocka_run_group_tests_name("str2ld", tests, ((void*)0), ((void*)0));
}
