
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CMUnitTest {int dummy; } ;


 int api_info ;
 int cmocka_run_group_tests_name (char*,struct CMUnitTest const*,int *,int *) ;
 struct CMUnitTest const cmocka_unit_test (int ) ;
 int debug_flags ;

int main(void)
{
    const struct CMUnitTest tests[] = { cmocka_unit_test(api_info) };
    debug_flags = 0xffffffffffff;

    return cmocka_run_group_tests_name("web_api", tests, ((void*)0), ((void*)0));
}
