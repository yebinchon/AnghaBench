
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int top; int dmax; scalar_t__* d; } ;
typedef TYPE_1__ BIGNUM ;



void bn_set_all_zero(BIGNUM *a)
{
    int i;

    for (i = a->top; i < a->dmax; i++)
        a->d[i] = 0;
}
