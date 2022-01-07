
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 scalar_t__ BN_cmp (int const*,int const*) ;
 int TEST_BN_eq (int const*,int const*) ;
 int TEST_error (char*,char const*) ;

__attribute__((used)) static int equalBN(const char *op, const BIGNUM *expected, const BIGNUM *actual)
{
    if (BN_cmp(expected, actual) == 0)
        return 1;

    TEST_error("unexpected %s value", op);
    TEST_BN_eq(expected, actual);
    return 0;
}
