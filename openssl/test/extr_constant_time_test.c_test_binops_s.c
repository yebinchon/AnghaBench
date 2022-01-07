
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ OSSL_NELEM (size_t*) ;
 int constant_time_eq_s ;
 int constant_time_ge_s ;
 int constant_time_lt_s ;
 int test_binary_op_s (int *,char*,size_t,size_t,int) ;
 int test_eq_s (size_t,size_t) ;
 int test_select_s (size_t,size_t) ;
 size_t* test_values_s ;

__attribute__((used)) static int test_binops_s(int i)
{
    size_t a = test_values_s[i];
    int j;
    int ret = 1;

    for (j = 0; j < (int)OSSL_NELEM(test_values_s); ++j) {
        size_t b = test_values_s[j];

        if (!test_select_s(a, b)
                || !test_eq_s(a, b)
                || !test_binary_op_s(&constant_time_lt_s, "constant_time_lt_s",
                                     a, b, a < b)
                || !test_binary_op_s(&constant_time_lt_s, "constant_time_lt_s",
                                     b, a, b < a)
                || !test_binary_op_s(&constant_time_ge_s, "constant_time_ge_s",
                                     a, b, a >= b)
                || !test_binary_op_s(&constant_time_ge_s, "constant_time_ge_s",
                                     b, a, b >= a)
                || !test_binary_op_s(&constant_time_eq_s, "constant_time_eq_s",
                                     a, b, a == b)
                || !test_binary_op_s(&constant_time_eq_s, "constant_time_eq_s",
                                     b, a, b == a))
            ret = 0;
    }
    return ret;
}
