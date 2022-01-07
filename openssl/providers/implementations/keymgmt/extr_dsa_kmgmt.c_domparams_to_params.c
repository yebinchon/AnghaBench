
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;
typedef int DSA ;
typedef int BIGNUM ;


 int DSA_get0_pqg (int *,int const**,int const**,int const**) ;
 int * OSSL_PARAM_locate (int *,int ) ;
 int OSSL_PARAM_set_BN (int *,int const*) ;
 int OSSL_PKEY_PARAM_FFC_G ;
 int OSSL_PKEY_PARAM_FFC_P ;
 int OSSL_PKEY_PARAM_FFC_Q ;

__attribute__((used)) static int domparams_to_params(DSA *dsa, OSSL_PARAM params[])
{
    OSSL_PARAM *p;
    const BIGNUM *dsa_p = ((void*)0), *dsa_q = ((void*)0), *dsa_g = ((void*)0);

    if (dsa == ((void*)0))
        return 0;

    DSA_get0_pqg(dsa, &dsa_p, &dsa_q, &dsa_g);
    if ((p = OSSL_PARAM_locate(params, OSSL_PKEY_PARAM_FFC_P)) != ((void*)0)
        && !OSSL_PARAM_set_BN(p, dsa_p))
        return 0;
    if ((p = OSSL_PARAM_locate(params, OSSL_PKEY_PARAM_FFC_Q)) != ((void*)0)
        && !OSSL_PARAM_set_BN(p, dsa_q))
        return 0;
    if ((p = OSSL_PARAM_locate(params, OSSL_PKEY_PARAM_FFC_G)) != ((void*)0)
        && !OSSL_PARAM_set_BN(p, dsa_g))
        return 0;

    return 1;
}
