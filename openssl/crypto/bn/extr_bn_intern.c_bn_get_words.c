
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * d; } ;
typedef int BN_ULONG ;
typedef TYPE_1__ BIGNUM ;



BN_ULONG *bn_get_words(const BIGNUM *a)
{
    return a->d;
}
