
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int rtop ;
struct TYPE_8__ {int top; int* d; int neg; int flags; } ;
struct TYPE_7__ {int* n0; TYPE_2__ N; } ;
typedef int BN_ULONG ;
typedef TYPE_1__ BN_MONT_CTX ;
typedef TYPE_2__ BIGNUM ;


 int BN_FLG_FIXED_TOP ;
 int BN_MASK2 ;
 int bn_mul_add_words (int*,int*,int,int) ;
 scalar_t__ bn_sub_words (int*,int*,int*,int) ;
 int * bn_wexpand (TYPE_2__*,int) ;

__attribute__((used)) static int bn_from_montgomery_word(BIGNUM *ret, BIGNUM *r, BN_MONT_CTX *mont)
{
    BIGNUM *n;
    BN_ULONG *ap, *np, *rp, n0, v, carry;
    int nl, max, i;
    unsigned int rtop;

    n = &(mont->N);
    nl = n->top;
    if (nl == 0) {
        ret->top = 0;
        return 1;
    }

    max = (2 * nl);
    if (bn_wexpand(r, max) == ((void*)0))
        return 0;

    r->neg ^= n->neg;
    np = n->d;
    rp = r->d;


    for (rtop = r->top, i = 0; i < max; i++) {
        v = (BN_ULONG)0 - ((i - rtop) >> (8 * sizeof(rtop) - 1));
        rp[i] &= v;
    }

    r->top = max;
    r->flags |= BN_FLG_FIXED_TOP;
    n0 = mont->n0[0];






    for (carry = 0, i = 0; i < nl; i++, rp++) {
        v = bn_mul_add_words(rp, np, nl, (rp[0] * n0) & BN_MASK2);
        v = (v + carry + rp[nl]) & BN_MASK2;
        carry |= (v != rp[nl]);
        carry &= (v <= rp[nl]);
        rp[nl] = v;
    }

    if (bn_wexpand(ret, nl) == ((void*)0))
        return 0;
    ret->top = nl;
    ret->flags |= BN_FLG_FIXED_TOP;
    ret->neg = r->neg;

    rp = ret->d;





    ap = &(r->d[nl]);

    carry -= bn_sub_words(rp, ap, np, nl);





    for (i = 0; i < nl; i++) {
        rp[i] = (carry & ap[i]) | (~carry & rp[i]);
        ap[i] = 0;
    }

    return 1;
}
