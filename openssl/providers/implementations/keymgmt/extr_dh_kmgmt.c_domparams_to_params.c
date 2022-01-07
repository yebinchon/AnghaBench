
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;
typedef int DH ;
typedef int BIGNUM ;


 int DH_get0_pqg (int *,int const**,int *,int const**) ;
 int * OSSL_PARAM_locate (int *,int ) ;
 int OSSL_PARAM_set_BN (int *,int const*) ;
 int OSSL_PKEY_PARAM_FFC_G ;
 int OSSL_PKEY_PARAM_FFC_P ;

__attribute__((used)) static int domparams_to_params(DH *dh, OSSL_PARAM params[])
{
    OSSL_PARAM *p;
    const BIGNUM *dh_p = ((void*)0), *dh_g = ((void*)0);

    if (dh == ((void*)0))
        return 0;

    DH_get0_pqg(dh, &dh_p, ((void*)0), &dh_g);
    if ((p = OSSL_PARAM_locate(params, OSSL_PKEY_PARAM_FFC_P)) != ((void*)0)
        && !OSSL_PARAM_set_BN(p, dh_p))
        return 0;
    if ((p = OSSL_PARAM_locate(params, OSSL_PKEY_PARAM_FFC_G)) != ((void*)0)
        && !OSSL_PARAM_set_BN(p, dh_g))
        return 0;

    return 1;
}
