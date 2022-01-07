
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_null (int ) ;
 int searchandreplace (char*,char*,char*) ;

__attribute__((used)) static void
pass_any_null_param__returns_null() {

    char DUMMY[] = "DUMMY";

    assert_null(searchandreplace(((void*)0),DUMMY,DUMMY));
    assert_null(searchandreplace(DUMMY,((void*)0),DUMMY));
    assert_null(searchandreplace(DUMMY,DUMMY,((void*)0)));
}
