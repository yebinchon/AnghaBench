
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CMUnitTest {int dummy; } ;


 int OpenSSL_add_all_algorithms () ;
 int auth_token_basic_test ;
 int auth_token_fail_invalid_key ;
 int auth_token_test_empty_user ;
 int auth_token_test_env ;
 int auth_token_test_key_load ;
 int auth_token_test_known_keys ;
 int auth_token_test_random_keys ;
 int auth_token_test_timeout ;
 int cmocka_run_group_tests_name (char*,struct CMUnitTest const*,int *,int *) ;
 struct CMUnitTest const cmocka_unit_test_setup_teardown (int ,int ,int ) ;
 int setup ;
 int teardown ;

int
main(void)
{
    const struct CMUnitTest tests[] = {
        cmocka_unit_test_setup_teardown(auth_token_basic_test, setup, teardown),
        cmocka_unit_test_setup_teardown(auth_token_fail_invalid_key, setup, teardown),
        cmocka_unit_test_setup_teardown(auth_token_test_known_keys, setup, teardown),
        cmocka_unit_test_setup_teardown(auth_token_test_empty_user, setup, teardown),
        cmocka_unit_test_setup_teardown(auth_token_test_env, setup, teardown),
        cmocka_unit_test_setup_teardown(auth_token_test_random_keys, setup, teardown),
        cmocka_unit_test_setup_teardown(auth_token_test_key_load, setup, teardown),
        cmocka_unit_test_setup_teardown(auth_token_test_timeout, setup, teardown),
    };





    int ret = cmocka_run_group_tests_name("auth-token tests", tests, ((void*)0), ((void*)0));

    return ret;
}
