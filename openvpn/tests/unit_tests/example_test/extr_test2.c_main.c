
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CMUnitTest {int dummy; } ;


 int cmocka_run_group_tests_name (char*,struct CMUnitTest const*,int *,int *) ;
 struct CMUnitTest const cmocka_unit_test (int ) ;
 int test_true ;

int
main(void) {
    const struct CMUnitTest tests[] = {
        cmocka_unit_test(test_true),
    };

    return cmocka_run_group_tests_name("success_test2", tests, ((void*)0), ((void*)0));
}
