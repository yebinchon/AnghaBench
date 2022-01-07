
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dirty_cnt; int * priv_key; int * pub_key; } ;
typedef TYPE_1__ DH ;
typedef int BIGNUM ;


 int BN_clear_free (int *) ;

int DH_set0_key(DH *dh, BIGNUM *pub_key, BIGNUM *priv_key)
{
    if (pub_key != ((void*)0)) {
        BN_clear_free(dh->pub_key);
        dh->pub_key = pub_key;
    }
    if (priv_key != ((void*)0)) {
        BN_clear_free(dh->priv_key);
        dh->priv_key = priv_key;
    }

    dh->dirty_cnt++;
    return 1;
}
