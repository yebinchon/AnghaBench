
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 scalar_t__ BN_is_odd (int const*) ;
 int test_fail_bignum_mono_message (int *,char const*,int,char*,char*,char*,char const*,int const*) ;

int test_BN_odd(const char *file, int line, const char *s, const BIGNUM *a)
{
    if (a != ((void*)0) && BN_is_odd(a))
        return 1;
    test_fail_bignum_mono_message(((void*)0), file, line, "BIGNUM", "ODD(", ")", s, a);
    return 0;
}
