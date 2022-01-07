
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int BN_free (int *) ;
 int BN_hex2bn (int **,int *) ;
 int TEST_true (int ) ;
 int ** bn_output_tests ;
 int test_output_bignum (int *,int *) ;

__attribute__((used)) static int test_bn_output(int n)
{
    BIGNUM *b = ((void*)0);

    if (bn_output_tests[n] != ((void*)0)
            && !TEST_true(BN_hex2bn(&b, bn_output_tests[n])))
        return 0;
    test_output_bignum(bn_output_tests[n], b);
    BN_free(b);
    return 1;
}
