
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_null (int ) ;
 int searchandreplace (char*,char*,char*) ;

__attribute__((used)) static void
pass_any_empty_string__returns_null() {

    char DUMMY[] = "DUMMY";
    char EMPTY[] = "";

    assert_null(searchandreplace(EMPTY,DUMMY,DUMMY));
    assert_null(searchandreplace(DUMMY,EMPTY,DUMMY));
    assert_null(searchandreplace(DUMMY,DUMMY,EMPTY));
}
