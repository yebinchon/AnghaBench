
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_equal_array () ;
 int test_equal_complex () ;
 int test_equal_object () ;
 int test_equal_simple () ;

__attribute__((used)) static void run_tests()
{
    test_equal_simple();
    test_equal_array();
    test_equal_object();
    test_equal_complex();
}
