
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dmax; int top; int flags; scalar_t__ neg; int * d; } ;
typedef int BN_ULONG ;
typedef TYPE_1__ BIGNUM ;


 int BN_FLG_STATIC_DATA ;
 int bn_correct_top (TYPE_1__*) ;

void bn_set_static_words(BIGNUM *a, const BN_ULONG *words, int size)
{




    a->d = (BN_ULONG *)words;
    a->dmax = a->top = size;
    a->neg = 0;
    a->flags |= BN_FLG_STATIC_DATA;
    bn_correct_top(a);
}
