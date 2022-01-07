
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * priv_key; int * pub_key; int * q; int * g; int * p; } ;
typedef TYPE_1__ DSA ;
typedef int DH ;
typedef int BIGNUM ;


 int * BN_dup (int *) ;
 int BN_free (int *) ;
 int DH_free (int *) ;
 int * DH_new () ;
 int DH_set0_key (int *,int *,int *) ;
 int DH_set0_pqg (int *,int *,int *,int *) ;

DH *DSA_dup_DH(const DSA *r)
{





    DH *ret = ((void*)0);
    BIGNUM *p = ((void*)0), *q = ((void*)0), *g = ((void*)0), *pub_key = ((void*)0), *priv_key = ((void*)0);

    if (r == ((void*)0))
        goto err;
    ret = DH_new();
    if (ret == ((void*)0))
        goto err;
    if (r->p != ((void*)0) || r->g != ((void*)0) || r->q != ((void*)0)) {
        if (r->p == ((void*)0) || r->g == ((void*)0) || r->q == ((void*)0)) {

            goto err;
        }
        p = BN_dup(r->p);
        g = BN_dup(r->g);
        q = BN_dup(r->q);
        if (p == ((void*)0) || g == ((void*)0) || q == ((void*)0) || !DH_set0_pqg(ret, p, q, g))
            goto err;
        p = g = q = ((void*)0);
    }

    if (r->pub_key != ((void*)0)) {
        pub_key = BN_dup(r->pub_key);
        if (pub_key == ((void*)0))
            goto err;
        if (r->priv_key != ((void*)0)) {
            priv_key = BN_dup(r->priv_key);
            if (priv_key == ((void*)0))
                goto err;
        }
        if (!DH_set0_key(ret, pub_key, priv_key))
            goto err;
    } else if (r->priv_key != ((void*)0)) {

        goto err;
    }

    return ret;

 err:
    BN_free(p);
    BN_free(g);
    BN_free(q);
    BN_free(pub_key);
    BN_free(priv_key);
    DH_free(ret);
    return ((void*)0);
}
