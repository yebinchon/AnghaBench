
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CMUnitTest {int dummy; } ;


 int cmocka_run_group_tests_name (char*,struct CMUnitTest const*,int *,int *) ;
 struct CMUnitTest const cmocka_unit_test (int ) ;
 struct CMUnitTest const cmocka_unit_test_setup_teardown (int ,int ,int ) ;
 int int_test_success ;
 int null_test_success ;
 int setup ;
 int teardown ;

int
main(void) {
    const struct CMUnitTest tests[] = {
        cmocka_unit_test(null_test_success),
        cmocka_unit_test_setup_teardown(int_test_success, setup, teardown),

    };

    return cmocka_run_group_tests_name("success_test", tests, ((void*)0), ((void*)0));
}
