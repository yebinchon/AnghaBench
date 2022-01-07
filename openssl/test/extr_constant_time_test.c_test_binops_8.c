
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ OSSL_NELEM (unsigned int*) ;
 int constant_time_eq_8 ;
 int constant_time_ge_8 ;
 int constant_time_lt_8 ;
 int test_binary_op_8 (int *,char*,unsigned int,unsigned int,int) ;
 unsigned int* test_values_8 ;

__attribute__((used)) static int test_binops_8(int i)
{
    unsigned int a = test_values_8[i];
    int j;
    int ret = 1;

    for (j = 0; j < (int)OSSL_NELEM(test_values_8); ++j) {
        unsigned int b = test_values_8[j];

        if (!test_binary_op_8(&constant_time_lt_8, "constant_time_lt_8",
                                     a, b, a < b)
                || !test_binary_op_8(&constant_time_lt_8, "constant_time_lt_8",
                                     b, a, b < a)
                || !test_binary_op_8(&constant_time_ge_8, "constant_time_ge_8",
                                     a, b, a >= b)
                || !test_binary_op_8(&constant_time_ge_8, "constant_time_ge_8",
                                     b, a, b >= a)
                || !test_binary_op_8(&constant_time_eq_8, "constant_time_eq_8",
                                     a, b, a == b)
                || !test_binary_op_8(&constant_time_eq_8, "constant_time_eq_8",
                                     b, a, b == a))
            ret = 0;
    }
    return ret;
}
