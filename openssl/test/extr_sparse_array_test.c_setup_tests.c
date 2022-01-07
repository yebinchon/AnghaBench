
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 int test_sparse_array ;
 int test_sparse_array_doall ;
 int test_sparse_array_num ;

int setup_tests(void)
{
    ADD_TEST(test_sparse_array);
    ADD_TEST(test_sparse_array_num);
    ADD_TEST(test_sparse_array_doall);
    return 1;
}
