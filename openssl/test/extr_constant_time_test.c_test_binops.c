
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ OSSL_NELEM (unsigned int*) ;
 int constant_time_eq ;
 int constant_time_ge ;
 int constant_time_lt ;
 int test_binary_op (int *,char*,unsigned int,unsigned int,int) ;
 int test_select (unsigned int,unsigned int) ;
 unsigned int* test_values ;

__attribute__((used)) static int test_binops(int i)
{
    unsigned int a = test_values[i];
    int j;
    int ret = 1;

    for (j = 0; j < (int)OSSL_NELEM(test_values); ++j) {
        unsigned int b = test_values[j];

        if (!test_select(a, b)
                || !test_binary_op(&constant_time_lt, "ct_lt",
                                   a, b, a < b)
                || !test_binary_op(&constant_time_lt, "constant_time_lt",
                                   b, a, b < a)
                || !test_binary_op(&constant_time_ge, "constant_time_ge",
                                   a, b, a >= b)
                || !test_binary_op(&constant_time_ge, "constant_time_ge",
                                   b, a, b >= a)
                || !test_binary_op(&constant_time_eq, "constant_time_eq",
                                   a, b, a == b)
                || !test_binary_op(&constant_time_eq, "constant_time_eq",
                                   b, a, b == a))
            ret = 0;
    }
    return ret;
}
