
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; int references; } ;
typedef TYPE_1__ EC_PRE_COMP ;


 int CRYPTO_UP_REF (int *,int*,int ) ;

EC_PRE_COMP *EC_ec_pre_comp_dup(EC_PRE_COMP *pre)
{
    int i;
    if (pre != ((void*)0))
        CRYPTO_UP_REF(&pre->references, &i, pre->lock);
    return pre;
}
