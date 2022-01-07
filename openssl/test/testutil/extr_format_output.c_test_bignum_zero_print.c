
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int bn_chars ;
 char* test_bignum_zero_null (int const*) ;
 int test_printf_stderr (char*,char,int ,char const*,char const*) ;

__attribute__((used)) static void test_bignum_zero_print(const BIGNUM *bn, char sep)
{
    const char *v = test_bignum_zero_null(bn);
    const char *suf = bn != ((void*)0) ? ":    0" : "";

    test_printf_stderr("%c%*s%s\n", sep, bn_chars, v, suf);
}
