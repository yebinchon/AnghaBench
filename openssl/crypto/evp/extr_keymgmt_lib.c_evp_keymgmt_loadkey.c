
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* (* loadkey ) (void*,void*,size_t) ;} ;
typedef TYPE_1__ EVP_KEYMGMT ;


 int EVP_KEYMGMT_provider (TYPE_1__ const*) ;
 void* ossl_provider_ctx (int ) ;
 void* stub1 (void*,void*,size_t) ;

void *evp_keymgmt_loadkey(const EVP_KEYMGMT *keymgmt,
                          void *id, size_t idlen)
{
    void *provctx = ossl_provider_ctx(EVP_KEYMGMT_provider(keymgmt));

    return keymgmt->loadkey(provctx, id, idlen);
}
