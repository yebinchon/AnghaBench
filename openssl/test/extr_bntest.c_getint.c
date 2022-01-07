
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STANZA ;
typedef scalar_t__ BN_ULONG ;
typedef int BIGNUM ;


 int BN_free (int *) ;
 scalar_t__ BN_get_word (int *) ;
 int INT_MAX ;
 int TEST_ptr (int *) ;
 int TEST_ulong_le (scalar_t__,int ) ;
 int * getBN (int *,char const*) ;

__attribute__((used)) static int getint(STANZA *s, int *out, const char *attribute)
{
    BIGNUM *ret;
    BN_ULONG word;
    int st = 0;

    if (!TEST_ptr(ret = getBN(s, attribute))
            || !TEST_ulong_le(word = BN_get_word(ret), INT_MAX))
        goto err;

    *out = (int)word;
    st = 1;
 err:
    BN_free(ret);
    return st;
}
