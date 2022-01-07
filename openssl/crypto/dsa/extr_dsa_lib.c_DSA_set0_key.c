
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dirty_cnt; int * priv_key; int * pub_key; } ;
typedef TYPE_1__ DSA ;
typedef int BIGNUM ;


 int BN_free (int *) ;

int DSA_set0_key(DSA *d, BIGNUM *pub_key, BIGNUM *priv_key)
{




    if (d->pub_key == ((void*)0) && pub_key == ((void*)0))
        return 0;

    if (pub_key != ((void*)0)) {
        BN_free(d->pub_key);
        d->pub_key = pub_key;
    }
    if (priv_key != ((void*)0)) {
        BN_free(d->priv_key);
        d->priv_key = priv_key;
    }
    d->dirty_cnt++;

    return 1;
}
