
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv {int argc; int * argv; } ;


 int PATH1 ;
 int PATH2 ;
 struct argv argv_insert_head (struct argv*,int ) ;
 struct argv argv_new () ;
 int argv_printf (struct argv*,char*,int ) ;
 int argv_reset (struct argv*) ;
 int assert_int_equal (int,int) ;
 int assert_string_equal (int ,int ) ;

__attribute__((used)) static void
argv_insert_head__non_empty_argv__head_added(void **state)
{
    struct argv a = argv_new();
    struct argv b;
    int i;

    argv_printf(&a, "%s", PATH2);
    b = argv_insert_head(&a, PATH1);
    assert_int_equal(b.argc, a.argc + 1);
    for (i = 0; i < b.argc; i++) {
        if (i == 0)
        {
            assert_string_equal(b.argv[i], PATH1);
        }
        else
        {
            assert_string_equal(b.argv[i], a.argv[i - 1]);
        }
    }
    argv_reset(&b);

    argv_reset(&a);
}
