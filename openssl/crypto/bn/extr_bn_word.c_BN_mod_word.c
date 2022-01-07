
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int top; scalar_t__* d; } ;
typedef scalar_t__ BN_ULONG ;
typedef scalar_t__ BN_ULLONG ;
typedef TYPE_1__ BIGNUM ;


 scalar_t__ BN_BITS2 ;
 scalar_t__ BN_BITS4 ;
 scalar_t__ BN_MASK2 ;
 scalar_t__ BN_MASK2l ;
 scalar_t__ BN_div_word (TYPE_1__*,scalar_t__) ;
 TYPE_1__* BN_dup (TYPE_1__ const*) ;
 int BN_free (TYPE_1__*) ;
 int bn_check_top (TYPE_1__ const*) ;

BN_ULONG BN_mod_word(const BIGNUM *a, BN_ULONG w)
{

    BN_ULONG ret = 0;



    int i;

    if (w == 0)
        return (BN_ULONG)-1;






    if (w > ((BN_ULONG)1 << BN_BITS4)) {
        BIGNUM *tmp = BN_dup(a);
        if (tmp == ((void*)0))
            return (BN_ULONG)-1;

        ret = BN_div_word(tmp, w);
        BN_free(tmp);

        return ret;
    }


    bn_check_top(a);
    w &= BN_MASK2;
    for (i = a->top - 1; i >= 0; i--) {






        ret = ((ret << BN_BITS4) | ((a->d[i] >> BN_BITS4) & BN_MASK2l)) % w;
        ret = ((ret << BN_BITS4) | (a->d[i] & BN_MASK2l)) % w;




    }
    return (BN_ULONG)ret;
}
