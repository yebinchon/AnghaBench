
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;
typedef int DSA ;
typedef int BIGNUM ;


 int BN_free (int *) ;
 int DSA_set0_pqg (int *,int *,int *,int *) ;
 int OSSL_PARAM_get_BN (int const*,int **) ;
 int * OSSL_PARAM_locate_const (int const*,int ) ;
 int OSSL_PKEY_PARAM_FFC_G ;
 int OSSL_PKEY_PARAM_FFC_P ;
 int OSSL_PKEY_PARAM_FFC_Q ;

__attribute__((used)) static int params_to_domparams(DSA *dsa, const OSSL_PARAM params[])
{
    const OSSL_PARAM *param_p, *param_q, *param_g;
    BIGNUM *p = ((void*)0), *q = ((void*)0), *g = ((void*)0);

    if (dsa == ((void*)0))
        return 0;

    param_p = OSSL_PARAM_locate_const(params, OSSL_PKEY_PARAM_FFC_P);
    param_q = OSSL_PARAM_locate_const(params, OSSL_PKEY_PARAM_FFC_Q);
    param_g = OSSL_PARAM_locate_const(params, OSSL_PKEY_PARAM_FFC_G);

    if ((param_p != ((void*)0) && !OSSL_PARAM_get_BN(param_p, &p))
        || (param_q != ((void*)0) && !OSSL_PARAM_get_BN(param_q, &q))
        || (param_g != ((void*)0) && !OSSL_PARAM_get_BN(param_g, &g)))
        goto err;

    if (!DSA_set0_pqg(dsa, p, q, g))
        goto err;

    return 1;

 err:
    BN_free(p);
    BN_free(q);
    BN_free(g);
    return 0;
}
