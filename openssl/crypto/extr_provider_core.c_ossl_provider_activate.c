
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* store; } ;
struct TYPE_5__ {int lock; scalar_t__ use_fallbacks; } ;
typedef TYPE_2__ OSSL_PROVIDER ;


 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 scalar_t__ provider_activate (TYPE_2__*) ;

int ossl_provider_activate(OSSL_PROVIDER *prov)
{
    if (provider_activate(prov)) {
        CRYPTO_THREAD_write_lock(prov->store->lock);
        prov->store->use_fallbacks = 0;
        CRYPTO_THREAD_unlock(prov->store->lock);
        return 1;
    }

    return 0;
}
