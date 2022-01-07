
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CMUnitTest {int dummy; } ;


 int cmocka_run_group_tests_name (char*,struct CMUnitTest const*,int *,int *) ;
 struct CMUnitTest const cmocka_unit_test (int ) ;
 int pass_any_empty_string__returns_null ;
 int pass_any_null_param__returns_null ;
 int pattern_not_found__returns_original ;
 int replace_longer_text__multiple_times__match_all_matches_are_replaced ;
 int replace_single_char__multiple_times__match_all_matches_are_replaced ;
 int replace_single_char__one_time__match_is_replaced ;

int
main(void) {
    const struct CMUnitTest tests[] = {
        cmocka_unit_test(pass_any_null_param__returns_null),
        cmocka_unit_test(pass_any_empty_string__returns_null),
        cmocka_unit_test(replace_single_char__one_time__match_is_replaced),
        cmocka_unit_test(replace_single_char__multiple_times__match_all_matches_are_replaced),
        cmocka_unit_test(replace_longer_text__multiple_times__match_all_matches_are_replaced),
        cmocka_unit_test(pattern_not_found__returns_original),
    };

    return cmocka_run_group_tests_name("searchandreplace", tests, ((void*)0), ((void*)0));
}
