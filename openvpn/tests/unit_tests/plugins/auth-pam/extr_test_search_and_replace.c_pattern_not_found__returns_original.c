
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_non_null (char*) ;
 int assert_string_equal (char*,char*) ;
 int free (char*) ;
 char* searchandreplace (char*,char*,char*) ;

__attribute__((used)) static void
pattern_not_found__returns_original() {
    char *replaced = searchandreplace("abc","X","Y");

    assert_non_null(replaced);
    assert_string_equal("abc", replaced);

    free(replaced);
}
