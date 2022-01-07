
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_circular () ;
 int test_clear () ;
 int test_conditional_updates () ;
 int test_iterators () ;
 int test_misc () ;
 int test_object_foreach () ;
 int test_object_foreach_safe () ;
 int test_preserve_order () ;
 int test_set_many_keys () ;
 int test_set_nocheck () ;
 int test_update () ;

__attribute__((used)) static void run_tests()
{
    test_misc();
    test_clear();
    test_update();
    test_set_many_keys();
    test_conditional_updates();
    test_circular();
    test_set_nocheck();
    test_iterators();
    test_preserve_order();
    test_object_foreach();
    test_object_foreach_safe();
}
