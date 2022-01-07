
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int lock; } ;
struct TYPE_4__ {int flag_initialized; TYPE_2__* store; } ;
typedef TYPE_1__ OSSL_PROVIDER ;


 int CRYPTO_THREAD_read_lock (int ) ;
 int CRYPTO_THREAD_unlock (int ) ;
 int provider_activate_fallbacks (TYPE_2__*) ;

int ossl_provider_available(OSSL_PROVIDER *prov)
{
    if (prov != ((void*)0)) {
        CRYPTO_THREAD_read_lock(prov->store->lock);
        provider_activate_fallbacks(prov->store);
        CRYPTO_THREAD_unlock(prov->store->lock);

        return prov->flag_initialized;
    }
    return 0;
}
