
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dirty_cnt; int * g; int * q; int * p; } ;
typedef TYPE_1__ DSA ;
typedef int BIGNUM ;


 int BN_free (int *) ;

int DSA_set0_pqg(DSA *d, BIGNUM *p, BIGNUM *q, BIGNUM *g)
{



    if ((d->p == ((void*)0) && p == ((void*)0))
        || (d->q == ((void*)0) && q == ((void*)0))
        || (d->g == ((void*)0) && g == ((void*)0)))
        return 0;

    if (p != ((void*)0)) {
        BN_free(d->p);
        d->p = p;
    }
    if (q != ((void*)0)) {
        BN_free(d->q);
        d->q = q;
    }
    if (g != ((void*)0)) {
        BN_free(d->g);
        d->g = g;
    }
    d->dirty_cnt++;

    return 1;
}
