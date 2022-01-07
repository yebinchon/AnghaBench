
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_non_null (char*) ;
 int assert_string_equal (char*,char*) ;
 int free (char*) ;
 char* searchandreplace (char*,char*,char*) ;

__attribute__((used)) static void
replace_single_char__one_time__match_is_replaced() {
    char *replaced = searchandreplace("X","X","Y");

    assert_non_null(replaced);
    assert_string_equal("Y", replaced);

    free(replaced);
}
