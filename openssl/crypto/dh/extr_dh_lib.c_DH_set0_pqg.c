
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dirty_cnt; int length; int * g; int * q; int * p; } ;
typedef TYPE_1__ DH ;
typedef int BIGNUM ;


 int BN_free (int *) ;
 int BN_num_bits (int *) ;

int DH_set0_pqg(DH *dh, BIGNUM *p, BIGNUM *q, BIGNUM *g)
{



    if ((dh->p == ((void*)0) && p == ((void*)0))
        || (dh->g == ((void*)0) && g == ((void*)0)))
        return 0;

    if (p != ((void*)0)) {
        BN_free(dh->p);
        dh->p = p;
    }
    if (q != ((void*)0)) {
        BN_free(dh->q);
        dh->q = q;
    }
    if (g != ((void*)0)) {
        BN_free(dh->g);
        dh->g = g;
    }

    if (q != ((void*)0)) {
        dh->length = BN_num_bits(q);
    }

    dh->dirty_cnt++;
    return 1;
}
