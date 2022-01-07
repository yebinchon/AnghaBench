
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {void* (* importkey ) (void*,int const*) ;void* (* importdomparams ) (void*,int const*) ;} ;
struct TYPE_10__ {TYPE_1__* pkeys; } ;
struct TYPE_9__ {int domainparams; void* provdata; TYPE_3__* keymgmt; } ;
typedef int OSSL_PARAM ;
typedef TYPE_2__ EVP_PKEY ;
typedef TYPE_3__ EVP_KEYMGMT ;


 int EVP_KEYMGMT_provider (TYPE_3__*) ;
 int EVP_KEYMGMT_up_ref (TYPE_3__*) ;
 int evp_keymgmt_clear_pkey_cache (TYPE_2__*) ;
 void* ossl_provider_ctx (int ) ;
 void* stub1 (void*,int const*) ;
 void* stub2 (void*,int const*) ;

void *evp_keymgmt_fromdata(EVP_PKEY *target, EVP_KEYMGMT *keymgmt,
                           const OSSL_PARAM params[], int domainparams)
{
    void *provctx = ossl_provider_ctx(EVP_KEYMGMT_provider(keymgmt));
    void *provdata = domainparams
        ? keymgmt->importdomparams(provctx, params)
        : keymgmt->importkey(provctx, params);

    evp_keymgmt_clear_pkey_cache(target);
    if (provdata != ((void*)0)) {
        EVP_KEYMGMT_up_ref(keymgmt);
        target->pkeys[0].keymgmt = keymgmt;
        target->pkeys[0].provdata = provdata;
        target->pkeys[0].domainparams = domainparams;
    }

    return provdata;
}
