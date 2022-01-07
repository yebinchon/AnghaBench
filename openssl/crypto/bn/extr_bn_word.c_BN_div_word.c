
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int top; int* d; scalar_t__ neg; } ;
typedef int BN_ULONG ;
typedef TYPE_1__ BIGNUM ;


 int BN_BITS2 ;
 int BN_MASK2 ;
 int BN_lshift (TYPE_1__*,TYPE_1__*,int) ;
 int BN_num_bits_word (int) ;
 int bn_check_top (TYPE_1__*) ;
 int bn_div_words (int,int,int) ;

BN_ULONG BN_div_word(BIGNUM *a, BN_ULONG w)
{
    BN_ULONG ret = 0;
    int i, j;

    bn_check_top(a);
    w &= BN_MASK2;

    if (!w)

        return (BN_ULONG)-1;
    if (a->top == 0)
        return 0;


    j = BN_BITS2 - BN_num_bits_word(w);
    w <<= j;
    if (!BN_lshift(a, a, j))
        return (BN_ULONG)-1;

    for (i = a->top - 1; i >= 0; i--) {
        BN_ULONG l, d;

        l = a->d[i];
        d = bn_div_words(ret, l, w);
        ret = (l - ((d * w) & BN_MASK2)) & BN_MASK2;
        a->d[i] = d;
    }
    if ((a->top > 0) && (a->d[a->top - 1] == 0))
        a->top--;
    ret >>= j;
    if (!a->top)
        a->neg = 0;
    bn_check_top(a);
    return ret;
}
