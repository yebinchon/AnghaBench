
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * md; int mdname; int mdsize; } ;
typedef TYPE_1__ PROV_DSA_CTX ;
typedef int OSSL_PARAM ;


 int EVP_MD_name (int *) ;
 int * OSSL_PARAM_locate (int *,int ) ;
 int OSSL_PARAM_set_size_t (int *,int ) ;
 int OSSL_PARAM_set_utf8_string (int *,int ) ;
 int OSSL_SIGNATURE_PARAM_DIGEST ;
 int OSSL_SIGNATURE_PARAM_DIGEST_SIZE ;

__attribute__((used)) static int dsa_get_ctx_params(void *vpdsactx, OSSL_PARAM *params)
{
    PROV_DSA_CTX *pdsactx = (PROV_DSA_CTX *)vpdsactx;
    OSSL_PARAM *p;

    if (pdsactx == ((void*)0) || params == ((void*)0))
        return 0;

    p = OSSL_PARAM_locate(params, OSSL_SIGNATURE_PARAM_DIGEST_SIZE);
    if (p != ((void*)0) && !OSSL_PARAM_set_size_t(p, pdsactx->mdsize))
        return 0;

    p = OSSL_PARAM_locate(params, OSSL_SIGNATURE_PARAM_DIGEST);
    if (p != ((void*)0) && !OSSL_PARAM_set_utf8_string(p, pdsactx->md == ((void*)0)
                                                    ? pdsactx->mdname
                                                    : EVP_MD_name(pdsactx->md)))
        return 0;

    return 1;
}
