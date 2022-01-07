
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CMUnitTest {int dummy; } ;


 int cmocka_run_group_tests_name (char*,struct CMUnitTest const*,int *,int *) ;
 struct CMUnitTest const cmocka_unit_test_setup_teardown (int ,int ,int ) ;
 int test_packet_id_write_long ;
 int test_packet_id_write_long_prepend ;
 int test_packet_id_write_long_wrap ;
 int test_packet_id_write_setup ;
 int test_packet_id_write_short ;
 int test_packet_id_write_short_prepend ;
 int test_packet_id_write_short_wrap ;
 int test_packet_id_write_teardown ;

int
main(void) {
    const struct CMUnitTest tests[] = {
            cmocka_unit_test_setup_teardown(test_packet_id_write_short,
                    test_packet_id_write_setup, test_packet_id_write_teardown),
            cmocka_unit_test_setup_teardown(test_packet_id_write_long,
                    test_packet_id_write_setup, test_packet_id_write_teardown),
            cmocka_unit_test_setup_teardown(test_packet_id_write_short_prepend,
                    test_packet_id_write_setup, test_packet_id_write_teardown),
            cmocka_unit_test_setup_teardown(test_packet_id_write_long_prepend,
                    test_packet_id_write_setup, test_packet_id_write_teardown),
            cmocka_unit_test_setup_teardown(test_packet_id_write_short_wrap,
                    test_packet_id_write_setup, test_packet_id_write_teardown),
            cmocka_unit_test_setup_teardown(test_packet_id_write_long_wrap,
                    test_packet_id_write_setup, test_packet_id_write_teardown),
    };

    return cmocka_run_group_tests_name("packet_id tests", tests, ((void*)0), ((void*)0));
}
