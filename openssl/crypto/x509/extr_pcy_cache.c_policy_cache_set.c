
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int X509_POLICY_CACHE ;
struct TYPE_4__ {int const* policy_cache; int lock; } ;
typedef TYPE_1__ X509 ;


 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 int policy_cache_new (TYPE_1__*) ;

const X509_POLICY_CACHE *policy_cache_set(X509 *x)
{

    if (x->policy_cache == ((void*)0)) {
        CRYPTO_THREAD_write_lock(x->lock);
        policy_cache_new(x);
        CRYPTO_THREAD_unlock(x->lock);
    }

    return x->policy_cache;

}
