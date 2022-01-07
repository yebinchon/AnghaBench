
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int top; int d; } ;
typedef int BN_ULONG ;
typedef TYPE_1__ BIGNUM ;


 int BN_F_BN_SET_WORDS ;
 int BNerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int bn_correct_top (TYPE_1__*) ;
 int * bn_wexpand (TYPE_1__*,int) ;
 int memcpy (int ,int const*,int) ;

int bn_set_words(BIGNUM *a, const BN_ULONG *words, int num_words)
{
    if (bn_wexpand(a, num_words) == ((void*)0)) {
        BNerr(BN_F_BN_SET_WORDS, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    memcpy(a->d, words, sizeof(BN_ULONG) * num_words);
    a->top = num_words;
    bn_correct_top(a);
    return 1;
}
