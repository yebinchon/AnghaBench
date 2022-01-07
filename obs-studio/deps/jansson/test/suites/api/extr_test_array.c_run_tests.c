
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_array_foreach () ;
 int test_circular () ;
 int test_clear () ;
 int test_extend () ;
 int test_insert () ;
 int test_misc () ;
 int test_remove () ;

__attribute__((used)) static void run_tests()
{
    test_misc();
    test_insert();
    test_remove();
    test_clear();
    test_extend();
    test_circular();
    test_array_foreach();
}
