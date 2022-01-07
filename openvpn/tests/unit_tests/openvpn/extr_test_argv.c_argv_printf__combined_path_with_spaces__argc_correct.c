
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv {int argc; } ;


 int PATH1 ;
 int PATH2 ;
 struct argv argv_new () ;
 int argv_printf (struct argv*,char*,int ,int ,...) ;
 int argv_reset (struct argv*) ;
 int assert_int_equal (int ,int) ;

__attribute__((used)) static void
argv_printf__combined_path_with_spaces__argc_correct(void **state)
{
    struct argv a = argv_new();

    argv_printf(&a, "%s%sc", PATH1, PATH2);
    assert_int_equal(a.argc, 1);

    argv_printf(&a, "%s%sc %d", PATH1, PATH2, 42);
    assert_int_equal(a.argc, 2);

    argv_printf(&a, "foo %s%sc %s x y", PATH2, PATH1, "foo");
    assert_int_equal(a.argc, 5);

    argv_reset(&a);
}
