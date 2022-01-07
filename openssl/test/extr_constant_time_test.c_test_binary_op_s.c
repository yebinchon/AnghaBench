
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONSTTIME_FALSE_S ;
 int CONSTTIME_TRUE_S ;
 int TEST_size_t_eq (size_t,int ) ;
 int TEST_uint_eq (size_t,int ) ;

__attribute__((used)) static int test_binary_op_s(size_t (*op) (size_t a, size_t b),
                            const char *op_name, size_t a, size_t b,
                            int is_true)
{
    if (is_true && !TEST_size_t_eq(op(a,b), CONSTTIME_TRUE_S))
        return 0;
    if (!is_true && !TEST_uint_eq(op(a,b), CONSTTIME_FALSE_S))
        return 0;
    return 1;
}
