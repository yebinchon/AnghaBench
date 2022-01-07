
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int BN_free (int *) ;
 int BN_hex2bn (int **,char const*) ;
 int TEST (int,int ) ;
 int TEST_BN_eq (int *,int *) ;
 int TEST_BN_ne (int *,int *) ;
 scalar_t__ TEST_true (int ) ;

__attribute__((used)) static int test_long_bignum(void)
{
    int r;
    BIGNUM *a = ((void*)0), *b = ((void*)0), *c = ((void*)0), *d = ((void*)0);
    const char as[] = "1234567890123456789012345678901234567890123456789012"
                      "1234567890123456789012345678901234567890123456789012"
                      "1234567890123456789012345678901234567890123456789012"
                      "1234567890123456789012345678901234567890123456789012"
                      "1234567890123456789012345678901234567890123456789012"
                      "1234567890123456789012345678901234567890123456789012"
                      "FFFFFF";
    const char bs[] = "1234567890123456789012345678901234567890123456789012"
                      "1234567890123456789012345678901234567890123456789013"
                      "987657";
    const char cs[] = "-"
                      "123456789012345678901234567890"
                      "123456789012345678901234567890"
                      "ABCD";
    const char ds[] = "-"
                      "23456789A123456789B123456789C"
                      "123456789D123456789E123456789F"
                      "ABCD";

    r = TEST_true(BN_hex2bn(&a, as))
        && TEST_true(BN_hex2bn(&b, bs))
        && TEST_true(BN_hex2bn(&c, cs))
        && TEST_true(BN_hex2bn(&d, ds))
        && (TEST(0, TEST_BN_eq(a, b))
            & TEST(0, TEST_BN_eq(b, a))
            & TEST(0, TEST_BN_eq(b, ((void*)0)))
            & TEST(0, TEST_BN_eq(((void*)0), a))
            & TEST(1, TEST_BN_ne(a, ((void*)0)))
            & TEST(0, TEST_BN_eq(c, d)));
    BN_free(a);
    BN_free(b);
    BN_free(c);
    BN_free(d);
    return r;
}
