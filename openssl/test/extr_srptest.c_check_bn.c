
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 scalar_t__ BN_cmp (int const*,int *) ;
 int BN_free (int *) ;
 int BN_hex2bn (int **,char const*) ;
 int TEST_BN_eq (int const*,int *) ;
 int TEST_error (char*,char const*) ;
 int TEST_true (int ) ;

__attribute__((used)) static int check_bn(const char *name, const BIGNUM *bn, const char *hexbn)
{
    BIGNUM *tmp = ((void*)0);
    int r;

    if (!TEST_true(BN_hex2bn(&tmp, hexbn)))
        return 0;

    if (BN_cmp(bn, tmp) != 0)
        TEST_error("unexpected %s value", name);
    r = TEST_BN_eq(bn, tmp);
    BN_free(tmp);
    return r;
}
