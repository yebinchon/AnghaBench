
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv {int argc; } ;


 int PARAM1 ;
 int PARAM2 ;
 int PATH1 ;
 int PATH2 ;
 struct argv argv_new () ;
 int argv_printf (struct argv*,char*,int ,int ,int ) ;
 int argv_printf_cat (struct argv*,char*,...) ;
 int argv_reset (struct argv*) ;
 int assert_int_equal (int ,int) ;

__attribute__((used)) static void
argv_printf_cat__used_twice__argc_correct(void **state)
{
    struct argv a = argv_new();

    argv_printf(&a, "%s %s %s", PATH1, PATH2, PARAM1);
    argv_printf_cat(&a, "%s", PARAM2);
    argv_printf_cat(&a, "foo");
    assert_int_equal(a.argc, 5);

    argv_reset(&a);
}
