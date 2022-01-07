
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * g; int * q; int * p; } ;
typedef TYPE_1__ DSA ;
typedef int BIGNUM ;



__attribute__((used)) static void DSA_get0_pqg(const DSA *d, const BIGNUM **p, const BIGNUM **q, const BIGNUM **g)
{
 *p = d->p;
 *q = d->q;
 *g = d->g;
}
