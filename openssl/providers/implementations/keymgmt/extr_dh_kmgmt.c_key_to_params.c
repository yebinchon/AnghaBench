
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;
typedef int DH ;
typedef int BIGNUM ;


 int DH_get0_key (int *,int const**,int const**) ;
 int * OSSL_PARAM_locate (int *,int ) ;
 int OSSL_PARAM_set_BN (int *,int const*) ;
 int OSSL_PKEY_PARAM_DH_PRIV_KEY ;
 int OSSL_PKEY_PARAM_DH_PUB_KEY ;
 int domparams_to_params (int *,int *) ;

__attribute__((used)) static int key_to_params(DH *dh, OSSL_PARAM params[])
{
    OSSL_PARAM *p;
    const BIGNUM *priv_key = ((void*)0), *pub_key = ((void*)0);

    if (dh == ((void*)0))
        return 0;
    if (!domparams_to_params(dh, params))
        return 0;

    DH_get0_key(dh, &pub_key, &priv_key);
    if ((p = OSSL_PARAM_locate(params,
                                     OSSL_PKEY_PARAM_DH_PRIV_KEY)) != ((void*)0)
        && !OSSL_PARAM_set_BN(p, priv_key))
        return 0;
    if ((p = OSSL_PARAM_locate(params,
                                     OSSL_PKEY_PARAM_DH_PUB_KEY)) != ((void*)0)
        && !OSSL_PARAM_set_BN(p, pub_key))
        return 0;

    return 1;
}
