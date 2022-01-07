
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CMUnitTest {int dummy; } ;


 int cmocka_run_group_tests_name (char*,struct CMUnitTest const*,int *,int *) ;
 struct CMUnitTest const cmocka_unit_test (int ) ;
 struct CMUnitTest const cmocka_unit_test_setup_teardown (int ,int ,int ) ;
 int test_buffer_free_gc_one ;
 int test_buffer_free_gc_two ;
 int test_buffer_list_aggregate_separator_all ;
 int test_buffer_list_aggregate_separator_empty ;
 int test_buffer_list_aggregate_separator_emptybuffers ;
 int test_buffer_list_aggregate_separator_noop ;
 int test_buffer_list_aggregate_separator_nosep ;
 int test_buffer_list_aggregate_separator_two ;
 int test_buffer_list_aggregate_separator_zerolen ;
 int test_buffer_list_full ;
 int test_buffer_list_setup ;
 int test_buffer_list_teardown ;
 int test_buffer_strprefix ;

int
main(void)
{
    const struct CMUnitTest tests[] = {
        cmocka_unit_test(test_buffer_strprefix),
        cmocka_unit_test_setup_teardown(test_buffer_list_full,
                                        test_buffer_list_setup,
                                        test_buffer_list_teardown),
        cmocka_unit_test_setup_teardown(test_buffer_list_aggregate_separator_empty,
                                        test_buffer_list_setup,
                                        test_buffer_list_teardown),
        cmocka_unit_test_setup_teardown(test_buffer_list_aggregate_separator_noop,
                                        test_buffer_list_setup,
                                        test_buffer_list_teardown),
        cmocka_unit_test_setup_teardown(test_buffer_list_aggregate_separator_two,
                                        test_buffer_list_setup,
                                        test_buffer_list_teardown),
        cmocka_unit_test_setup_teardown(test_buffer_list_aggregate_separator_all,
                                        test_buffer_list_setup,
                                        test_buffer_list_teardown),
        cmocka_unit_test_setup_teardown(test_buffer_list_aggregate_separator_nosep,
                                        test_buffer_list_setup,
                                        test_buffer_list_teardown),
        cmocka_unit_test_setup_teardown(test_buffer_list_aggregate_separator_zerolen,
                                        test_buffer_list_setup,
                                        test_buffer_list_teardown),
        cmocka_unit_test_setup_teardown(test_buffer_list_aggregate_separator_emptybuffers,
                                        test_buffer_list_setup,
                                        test_buffer_list_teardown),
        cmocka_unit_test(test_buffer_free_gc_one),
        cmocka_unit_test(test_buffer_free_gc_two),
    };

    return cmocka_run_group_tests_name("buffer", tests, ((void*)0), ((void*)0));
}
