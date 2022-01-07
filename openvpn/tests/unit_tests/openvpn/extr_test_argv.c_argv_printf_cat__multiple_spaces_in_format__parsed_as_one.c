
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv {int argc; } ;


 int PARAM1 ;
 int PATH1 ;
 int PATH2 ;
 struct argv argv_new () ;
 int argv_printf (struct argv*,char*,int ) ;
 int argv_printf_cat (struct argv*,char*,int ,int ) ;
 int argv_reset (struct argv*) ;
 int assert_int_equal (int ,int) ;

__attribute__((used)) static void
argv_printf_cat__multiple_spaces_in_format__parsed_as_one(void **state)
{
    struct argv a = argv_new();

    argv_printf(&a, "%s ", PATH1);
    argv_printf_cat(&a, " %s  %s", PATH2, PARAM1);
    assert_int_equal(a.argc, 3);

    argv_reset(&a);
}
