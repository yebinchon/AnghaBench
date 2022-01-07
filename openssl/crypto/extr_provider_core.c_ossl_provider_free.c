
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int refcnt_lock; int parameters; struct TYPE_6__* path; struct TYPE_6__* name; int module; scalar_t__ flag_initialized; struct TYPE_6__* error_strings; int error_lib; int provctx; int (* teardown ) (int ) ;int refcnt; } ;
typedef TYPE_1__ OSSL_PROVIDER ;


 int CRYPTO_DOWN_REF (int *,int*,int ) ;
 int CRYPTO_THREAD_lock_free (int ) ;
 int DSO_free (int ) ;
 int ERR_unload_strings (int ,TYPE_1__*) ;
 int OPENSSL_free (TYPE_1__*) ;
 int free_infopair ;
 int ossl_init_thread_deregister (TYPE_1__*) ;
 int sk_INFOPAIR_pop_free (int ,int ) ;
 int stub1 (int ) ;

void ossl_provider_free(OSSL_PROVIDER *prov)
{
    if (prov != ((void*)0)) {
        int ref = 0;

        CRYPTO_DOWN_REF(&prov->refcnt, &ref, prov->refcnt_lock);
        if (ref < 2 && prov->flag_initialized) {

            ossl_init_thread_deregister(prov);

            if (prov->teardown != ((void*)0))
                prov->teardown(prov->provctx);


            if (prov->error_strings != ((void*)0)) {
                ERR_unload_strings(prov->error_lib, prov->error_strings);
                OPENSSL_free(prov->error_strings);
                prov->error_strings = ((void*)0);
            }


            prov->flag_initialized = 0;
        }





        if (ref == 0) {

            DSO_free(prov->module);

            OPENSSL_free(prov->name);
            OPENSSL_free(prov->path);
            sk_INFOPAIR_pop_free(prov->parameters, free_infopair);

            CRYPTO_THREAD_lock_free(prov->refcnt_lock);

            OPENSSL_free(prov);
        }
    }
}
