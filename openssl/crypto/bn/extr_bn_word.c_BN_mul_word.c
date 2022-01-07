
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ top; int * d; } ;
typedef int BN_ULONG ;
typedef TYPE_1__ BIGNUM ;


 int BN_MASK2 ;
 int BN_zero (TYPE_1__*) ;
 int bn_check_top (TYPE_1__*) ;
 int bn_mul_words (int *,int *,scalar_t__,int ) ;
 int * bn_wexpand (TYPE_1__*,scalar_t__) ;

int BN_mul_word(BIGNUM *a, BN_ULONG w)
{
    BN_ULONG ll;

    bn_check_top(a);
    w &= BN_MASK2;
    if (a->top) {
        if (w == 0)
            BN_zero(a);
        else {
            ll = bn_mul_words(a->d, a->d, a->top, w);
            if (ll) {
                if (bn_wexpand(a, a->top + 1) == ((void*)0))
                    return 0;
                a->d[a->top++] = ll;
            }
        }
    }
    bn_check_top(a);
    return 1;
}
