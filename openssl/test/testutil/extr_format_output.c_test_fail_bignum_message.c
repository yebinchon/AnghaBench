
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int test_fail_bignum_common (char const*,char const*,int,char const*,char const*,char const*,char const*,int const*,int const*) ;
 int test_printf_stderr (char*) ;

void test_fail_bignum_message(const char *prefix, const char *file,
                              int line, const char *type,
                              const char *left, const char *right,
                              const char *op,
                              const BIGNUM *bn1, const BIGNUM *bn2)
{
    test_fail_bignum_common(prefix, file, line, type, left, right, op, bn1, bn2);
    test_printf_stderr("\n");
}
