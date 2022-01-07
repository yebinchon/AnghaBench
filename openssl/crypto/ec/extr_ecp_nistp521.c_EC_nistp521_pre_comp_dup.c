
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; int references; } ;
typedef TYPE_1__ NISTP521_PRE_COMP ;


 int CRYPTO_UP_REF (int *,int*,int ) ;

NISTP521_PRE_COMP *EC_nistp521_pre_comp_dup(NISTP521_PRE_COMP *p)
{
    int i;
    if (p != ((void*)0))
        CRYPTO_UP_REF(&p->references, &i, p->lock);
    return p;
}
