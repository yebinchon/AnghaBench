
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * g; int * q; int * p; } ;
typedef TYPE_1__ DSA ;
typedef int BIGNUM ;



void DSA_get0_pqg(const DSA *d,
                  const BIGNUM **p, const BIGNUM **q, const BIGNUM **g)
{
    if (p != ((void*)0))
        *p = d->p;
    if (q != ((void*)0))
        *q = d->q;
    if (g != ((void*)0))
        *g = d->g;
}
