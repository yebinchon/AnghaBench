
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;
typedef int DH ;
typedef int BIGNUM ;


 int BN_free (int *) ;
 int DH_set0_key (int *,int *,int *) ;
 int OSSL_PARAM_get_BN (int const*,int **) ;
 int * OSSL_PARAM_locate_const (int const*,int ) ;
 int OSSL_PKEY_PARAM_DH_PRIV_KEY ;
 int OSSL_PKEY_PARAM_DH_PUB_KEY ;
 int params_to_domparams (int *,int const*) ;

__attribute__((used)) static int params_to_key(DH *dh, const OSSL_PARAM params[])
{
    const OSSL_PARAM *param_priv_key, *param_pub_key;
    BIGNUM *priv_key = ((void*)0), *pub_key = ((void*)0);

    if (dh == ((void*)0))
        return 0;

    if (!params_to_domparams(dh, params))
        return 0;

    param_priv_key =
        OSSL_PARAM_locate_const(params, OSSL_PKEY_PARAM_DH_PRIV_KEY);
    param_pub_key =
        OSSL_PARAM_locate_const(params, OSSL_PKEY_PARAM_DH_PUB_KEY);







    if (param_pub_key == ((void*)0))
        return 0;

    if ((param_priv_key != ((void*)0)
         && !OSSL_PARAM_get_BN(param_priv_key, &priv_key))
        || !OSSL_PARAM_get_BN(param_pub_key, &pub_key))
        goto err;

    if (!DH_set0_key(dh, pub_key, priv_key))
        goto err;

    return 1;

 err:
    BN_free(priv_key);
    BN_free(pub_key);
    return 0;
}
