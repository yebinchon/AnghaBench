
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int BN_FLG_MALLOCED ;
 int BN_FLG_STATIC_DATA ;
 int BN_clear_free (int *) ;
 int * BN_dup (int const*) ;
 scalar_t__ BN_get_flags (int const*,int ) ;

__attribute__((used)) static int int_dh_bn_cpy(BIGNUM **dst, const BIGNUM *src)
{
    BIGNUM *a;





    if (src == ((void*)0))
        a = ((void*)0);
    else if (BN_get_flags(src, BN_FLG_STATIC_DATA)
                && !BN_get_flags(src, BN_FLG_MALLOCED))
        a = (BIGNUM *)src;
    else if ((a = BN_dup(src)) == ((void*)0))
        return 0;
    BN_clear_free(*dst);
    *dst = a;
    return 1;
}
