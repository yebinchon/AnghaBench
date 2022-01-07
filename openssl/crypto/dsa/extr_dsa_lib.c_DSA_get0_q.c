
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* q; } ;
typedef TYPE_1__ DSA ;
typedef int BIGNUM ;



const BIGNUM *DSA_get0_q(const DSA *d)
{
    return d->q;
}
