
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_non_null (char*) ;
 int assert_string_equal (char*,char*) ;
 int free (char*) ;
 char* searchandreplace (char*,char*,char*) ;

__attribute__((used)) static void
replace_longer_text__multiple_times__match_all_matches_are_replaced() {
    char *replaced = searchandreplace("XXaXX","XX","YY");

    assert_non_null(replaced);
    assert_string_equal("YYaYY", replaced);

    free(replaced);
}
