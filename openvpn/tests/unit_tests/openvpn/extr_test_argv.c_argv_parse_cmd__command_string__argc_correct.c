
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv {int argc; } ;


 int SCRIPT_CMD ;
 struct argv argv_new () ;
 int argv_parse_cmd (struct argv*,int ) ;
 int argv_reset (struct argv*) ;
 int assert_int_equal (int ,int) ;

__attribute__((used)) static void
argv_parse_cmd__command_string__argc_correct(void **state)
{
    struct argv a = argv_new();

    argv_parse_cmd(&a, SCRIPT_CMD);
    assert_int_equal(a.argc, 3);

    argv_reset(&a);
}
