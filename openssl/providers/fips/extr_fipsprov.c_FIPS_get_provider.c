
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* prov; } ;
typedef int OSSL_PROVIDER ;
typedef int OPENSSL_CTX ;
typedef TYPE_1__ FIPS_GLOBAL ;


 int OPENSSL_CTX_FIPS_PROV_INDEX ;
 int fips_prov_ossl_ctx_method ;
 TYPE_1__* openssl_ctx_get_data (int *,int ,int *) ;

const OSSL_PROVIDER *FIPS_get_provider(OPENSSL_CTX *ctx)
{
    FIPS_GLOBAL *fgbl = openssl_ctx_get_data(ctx, OPENSSL_CTX_FIPS_PROV_INDEX,
                                             &fips_prov_ossl_ctx_method);

    if (fgbl == ((void*)0))
        return ((void*)0);

    return fgbl->prov;
}
