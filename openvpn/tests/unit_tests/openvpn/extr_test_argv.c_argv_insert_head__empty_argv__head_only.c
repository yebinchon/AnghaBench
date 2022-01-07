
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv {int * argv; int argc; } ;


 int PATH1 ;
 struct argv argv_insert_head (struct argv*,int ) ;
 struct argv argv_new () ;
 int argv_reset (struct argv*) ;
 int assert_int_equal (int ,int) ;
 int assert_string_equal (int ,int ) ;

__attribute__((used)) static void
argv_insert_head__empty_argv__head_only(void **state)
{
    struct argv a = argv_new();
    struct argv b;

    b = argv_insert_head(&a, PATH1);
    assert_int_equal(b.argc, 1);
    assert_string_equal(b.argv[0], PATH1);
    argv_reset(&b);

    argv_reset(&a);
}
