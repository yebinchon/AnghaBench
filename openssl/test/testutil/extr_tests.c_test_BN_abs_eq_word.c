
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_ULONG ;
typedef int BIGNUM ;


 scalar_t__ BN_abs_is_word (int const*,int ) ;
 int * BN_dup (int const*) ;
 int BN_free (int *) ;
 int * BN_new () ;
 int BN_set_negative (int *,int ) ;
 int BN_set_word (int *,int ) ;
 int test_fail_bignum_message (int *,char const*,int,char*,char const*,char const*,char*,int *,int *) ;

int test_BN_abs_eq_word(const char *file, int line, const char *bns,
                        const char *ws, const BIGNUM *a, BN_ULONG w)
{
    BIGNUM *bw, *aa;

    if (a != ((void*)0) && BN_abs_is_word(a, w))
        return 1;
    bw = BN_new();
    aa = BN_dup(a);
    BN_set_negative(aa, 0);
    BN_set_word(bw, w);
    test_fail_bignum_message(((void*)0), file, line, "BIGNUM", bns, ws, "abs==",
                             aa, bw);
    BN_free(bw);
    BN_free(aa);
    return 0;
}
