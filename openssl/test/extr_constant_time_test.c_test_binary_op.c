
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONSTTIME_FALSE ;
 int CONSTTIME_TRUE ;
 int TEST_uint_eq (unsigned int,int ) ;

__attribute__((used)) static int test_binary_op(unsigned int (*op) (unsigned int a, unsigned int b),
                          const char *op_name, unsigned int a, unsigned int b,
                          int is_true)
{
    if (is_true && !TEST_uint_eq(op(a, b), CONSTTIME_TRUE))
        return 0;
    if (!is_true && !TEST_uint_eq(op(a, b), CONSTTIME_FALSE))
        return 0;
    return 1;
}
