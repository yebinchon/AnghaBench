
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_copy_array () ;
 int test_copy_object () ;
 int test_copy_simple () ;
 int test_deep_copy_array () ;
 int test_deep_copy_object () ;
 int test_deep_copy_simple () ;

__attribute__((used)) static void run_tests()
{
    test_copy_simple();
    test_deep_copy_simple();
    test_copy_array();
    test_deep_copy_array();
    test_copy_object();
    test_deep_copy_object();
}
