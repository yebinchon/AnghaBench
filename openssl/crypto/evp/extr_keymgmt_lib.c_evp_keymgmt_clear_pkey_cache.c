
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ domainparams; int * provdata; TYPE_2__* keymgmt; } ;
struct TYPE_7__ {int (* freekey ) (void*) ;int (* freedomparams ) (void*) ;} ;
struct TYPE_6__ {TYPE_4__* pkeys; } ;
typedef TYPE_1__ EVP_PKEY ;
typedef TYPE_2__ EVP_KEYMGMT ;


 int EVP_KEYMGMT_free (TYPE_2__*) ;
 size_t OSSL_NELEM (TYPE_4__*) ;
 int stub1 (void*) ;
 int stub2 (void*) ;

void evp_keymgmt_clear_pkey_cache(EVP_PKEY *pk)
{
    size_t i;

    if (pk != ((void*)0)) {
        for (i = 0;
             i < OSSL_NELEM(pk->pkeys) && pk->pkeys[i].keymgmt != ((void*)0);
             i++) {
            EVP_KEYMGMT *keymgmt = pk->pkeys[i].keymgmt;
            void *provdata = pk->pkeys[i].provdata;

            pk->pkeys[i].keymgmt = ((void*)0);
            pk->pkeys[i].provdata = ((void*)0);
            if (pk->pkeys[i].domainparams)
                keymgmt->freedomparams(provdata);
            else
                keymgmt->freekey(provdata);
            EVP_KEYMGMT_free(keymgmt);
        }
    }
}
