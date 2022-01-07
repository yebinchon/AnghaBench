
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_exec_test () ;
 int do_multicpu_tests () ;
 int do_simple_tests () ;
 int finish_exec_test () ;
 scalar_t__ nerrs ;
 int setup_counter_page () ;
 int setup_low_user_desc () ;
 int strcmp (char*,char*) ;
 int test_gdt_invalidation () ;

int main(int argc, char **argv)
{
 if (argc == 1 && !strcmp(argv[0], "ldt_gdt_test_exec"))
  return finish_exec_test();

 setup_counter_page();
 setup_low_user_desc();

 do_simple_tests();

 do_multicpu_tests();

 do_exec_test();

 test_gdt_invalidation();

 return nerrs ? 1 : 0;
}
