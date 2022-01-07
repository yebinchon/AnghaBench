
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* mdname; int mdsize; int * md; } ;
typedef TYPE_1__ PROV_DSA_CTX ;
typedef int OSSL_PARAM ;


 int OSSL_PARAM_get_size_t (int const*,int *) ;
 int OSSL_PARAM_get_utf8_string (int const*,char**,int) ;
 int * OSSL_PARAM_locate_const (int const*,int ) ;
 int OSSL_SIGNATURE_PARAM_DIGEST ;
 int OSSL_SIGNATURE_PARAM_DIGEST_SIZE ;

__attribute__((used)) static int dsa_set_ctx_params(void *vpdsactx, const OSSL_PARAM params[])
{
    PROV_DSA_CTX *pdsactx = (PROV_DSA_CTX *)vpdsactx;
    const OSSL_PARAM *p;
    char *mdname;

    if (pdsactx == ((void*)0) || params == ((void*)0))
        return 0;

    if (pdsactx->md != ((void*)0)) {




        return 1;
    }

    p = OSSL_PARAM_locate_const(params, OSSL_SIGNATURE_PARAM_DIGEST_SIZE);
    if (p != ((void*)0) && !OSSL_PARAM_get_size_t(p, &pdsactx->mdsize))
        return 0;






    p = OSSL_PARAM_locate_const(params, OSSL_SIGNATURE_PARAM_DIGEST);
    mdname = pdsactx->mdname;
    if (p != ((void*)0)
            && !OSSL_PARAM_get_utf8_string(p, &mdname, sizeof(pdsactx->mdname)))
        return 0;

    return 1;
}
