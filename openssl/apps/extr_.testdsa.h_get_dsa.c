
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int g_l; int g; int q_l; int q; int p_l; int p; int pub_l; int pub; int priv_l; int priv; } ;
typedef TYPE_1__ testdsa ;
typedef int DSA ;
typedef int BIGNUM ;


 int * BN_bin2bn (int ,int ,int *) ;
 int BN_free (int *) ;
 int DSA_free (int *) ;
 int * DSA_new () ;
 int DSA_set0_key (int *,int *,int *) ;
 int DSA_set0_pqg (int *,int *,int *,int *) ;
 int set_dsa_ptr (TYPE_1__,int) ;

DSA *get_dsa(int dsa_bits)
{
    DSA *dsa;
    BIGNUM *priv_key, *pub_key, *p, *q, *g;
    testdsa dsa_t;

    switch (dsa_bits) {
    case 512:
        set_dsa_ptr(dsa_t, 512);
        break;
    case 1024:
        set_dsa_ptr(dsa_t, 1024);
        break;
    case 2048:
        set_dsa_ptr(dsa_t, 2048);
        break;
    default:
        return ((void*)0);
    }

    if ((dsa = DSA_new()) == ((void*)0))
        return ((void*)0);
    priv_key = BN_bin2bn(dsa_t.priv, dsa_t.priv_l, ((void*)0));
    pub_key = BN_bin2bn(dsa_t.pub, dsa_t.pub_l, ((void*)0));
    p = BN_bin2bn(dsa_t.p, dsa_t.p_l, ((void*)0));
    q = BN_bin2bn(dsa_t.q, dsa_t.q_l, ((void*)0));
    g = BN_bin2bn(dsa_t.g, dsa_t.g_l, ((void*)0));
    if ((priv_key == ((void*)0)) || (pub_key == ((void*)0)) || (p == ((void*)0)) || (q == ((void*)0))
         || (g == ((void*)0))) {
        goto err;
    }
    if (!DSA_set0_pqg(dsa, p, q, g))
        goto err;

    if (!DSA_set0_key(dsa, pub_key, priv_key))
        goto err;

    return dsa;
 err:
    DSA_free(dsa);
    BN_free(priv_key);
    BN_free(pub_key);
    BN_free(p);
    BN_free(q);
    BN_free(g);
    return ((void*)0);
}
