
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * dsa; } ;
struct TYPE_5__ {TYPE_1__ pkey; } ;
typedef int OSSL_PARAM_BLD ;
typedef int OSSL_PARAM ;
typedef TYPE_2__ EVP_PKEY ;
typedef int EVP_KEYMGMT ;
typedef int DSA ;
typedef int BIGNUM ;


 int * DSA_get0_g (int *) ;
 int * DSA_get0_p (int *) ;
 int * DSA_get0_priv_key (int *) ;
 int * DSA_get0_pub_key (int *) ;
 int * DSA_get0_q (int *) ;
 int OSSL_PKEY_PARAM_DSA_PRIV_KEY ;
 int OSSL_PKEY_PARAM_DSA_PUB_KEY ;
 int OSSL_PKEY_PARAM_FFC_G ;
 int OSSL_PKEY_PARAM_FFC_P ;
 int OSSL_PKEY_PARAM_FFC_Q ;
 void* evp_keymgmt_importdomparams (int *,int *) ;
 void* evp_keymgmt_importkey (int *,int *) ;
 int ossl_param_bld_free (int *) ;
 int ossl_param_bld_init (int *) ;
 int ossl_param_bld_push_BN (int *,int ,int const*) ;
 int * ossl_param_bld_to_param (int *) ;

__attribute__((used)) static void *dsa_pkey_export_to(const EVP_PKEY *pk, EVP_KEYMGMT *keymgmt,
                                int want_domainparams)
{
    DSA *dsa = pk->pkey.dsa;
    OSSL_PARAM_BLD tmpl;
    const BIGNUM *p = DSA_get0_p(dsa), *g = DSA_get0_g(dsa);
    const BIGNUM *q = DSA_get0_q(dsa), *pub_key = DSA_get0_pub_key(dsa);
    const BIGNUM *priv_key = DSA_get0_priv_key(dsa);
    OSSL_PARAM *params;
    void *provdata = ((void*)0);

    if (p == ((void*)0) || q == ((void*)0) || g == ((void*)0))
        return ((void*)0);

    ossl_param_bld_init(&tmpl);
    if (!ossl_param_bld_push_BN(&tmpl, OSSL_PKEY_PARAM_FFC_P, p)
        || !ossl_param_bld_push_BN(&tmpl, OSSL_PKEY_PARAM_FFC_Q, q)
        || !ossl_param_bld_push_BN(&tmpl, OSSL_PKEY_PARAM_FFC_G, g))
        return ((void*)0);

    if (!want_domainparams) {

        if (!ossl_param_bld_push_BN(&tmpl, OSSL_PKEY_PARAM_DSA_PUB_KEY,
                                    pub_key))
            return ((void*)0);

        if (priv_key != ((void*)0)) {
            if (!ossl_param_bld_push_BN(&tmpl, OSSL_PKEY_PARAM_DSA_PRIV_KEY,
                                        priv_key))
                return ((void*)0);
        }
    }

    params = ossl_param_bld_to_param(&tmpl);


    provdata = want_domainparams
        ? evp_keymgmt_importdomparams(keymgmt, params)
        : evp_keymgmt_importkey(keymgmt, params);

    ossl_param_bld_free(params);
    return provdata;
}
