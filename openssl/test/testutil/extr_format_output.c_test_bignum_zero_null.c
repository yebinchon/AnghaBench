
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 scalar_t__ BN_is_negative (int const*) ;

__attribute__((used)) static const char *test_bignum_zero_null(const BIGNUM *bn)
{
    if (bn != ((void*)0))
        return BN_is_negative(bn) ? "-0" : "0";
    return "NULL";
}
