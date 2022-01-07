
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * dh; } ;
struct TYPE_5__ {TYPE_1__ pkey; } ;
typedef int OSSL_PARAM_BLD ;
typedef int OSSL_PARAM ;
typedef TYPE_2__ EVP_PKEY ;
typedef int EVP_KEYMGMT ;
typedef int DH ;
typedef int BIGNUM ;


 int * DH_get0_g (int *) ;
 int * DH_get0_p (int *) ;
 int * DH_get0_priv_key (int *) ;
 int * DH_get0_pub_key (int *) ;
 int * DH_get0_q (int *) ;
 int OSSL_PKEY_PARAM_DH_PRIV_KEY ;
 int OSSL_PKEY_PARAM_DH_PUB_KEY ;
 int OSSL_PKEY_PARAM_FFC_G ;
 int OSSL_PKEY_PARAM_FFC_P ;
 int OSSL_PKEY_PARAM_FFC_Q ;
 void* evp_keymgmt_importdomparams (int *,int *) ;
 void* evp_keymgmt_importkey (int *,int *) ;
 int ossl_param_bld_free (int *) ;
 int ossl_param_bld_init (int *) ;
 int ossl_param_bld_push_BN (int *,int ,int const*) ;
 int * ossl_param_bld_to_param (int *) ;

__attribute__((used)) static void *dh_pkey_export_to(const EVP_PKEY *pk, EVP_KEYMGMT *keymgmt,
                               int want_domainparams)
{
    DH *dh = pk->pkey.dh;
    OSSL_PARAM_BLD tmpl;
    const BIGNUM *p = DH_get0_p(dh), *g = DH_get0_g(dh), *q = DH_get0_q(dh);
    const BIGNUM *pub_key = DH_get0_pub_key(dh);
    const BIGNUM *priv_key = DH_get0_priv_key(dh);
    OSSL_PARAM *params;
    void *provdata = ((void*)0);

    if (p == ((void*)0) || g == ((void*)0))
        return ((void*)0);

    ossl_param_bld_init(&tmpl);
    if (!ossl_param_bld_push_BN(&tmpl, OSSL_PKEY_PARAM_FFC_P, p)
        || !ossl_param_bld_push_BN(&tmpl, OSSL_PKEY_PARAM_FFC_G, g))
        return ((void*)0);
    if (q != ((void*)0)) {
        if (!ossl_param_bld_push_BN(&tmpl, OSSL_PKEY_PARAM_FFC_Q, q))
            return ((void*)0);
    }

    if (!want_domainparams) {

        if (!ossl_param_bld_push_BN(&tmpl, OSSL_PKEY_PARAM_DH_PUB_KEY,
                                    pub_key))
            return ((void*)0);

        if (priv_key != ((void*)0)) {
            if (!ossl_param_bld_push_BN(&tmpl, OSSL_PKEY_PARAM_DH_PRIV_KEY,
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
