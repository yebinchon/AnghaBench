
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct provider_store_st {scalar_t__ use_fallbacks; int providers; } ;
struct TYPE_4__ {scalar_t__ flag_fallback; } ;
typedef TYPE_1__ OSSL_PROVIDER ;


 int provider_activate (TYPE_1__*) ;
 int sk_OSSL_PROVIDER_num (int ) ;
 TYPE_1__* sk_OSSL_PROVIDER_value (int ,int) ;

__attribute__((used)) static void provider_activate_fallbacks(struct provider_store_st *store)
{
    if (store->use_fallbacks) {
        int num_provs = sk_OSSL_PROVIDER_num(store->providers);
        int activated_fallback_count = 0;
        int i;

        for (i = 0; i < num_provs; i++) {
            OSSL_PROVIDER *prov = sk_OSSL_PROVIDER_value(store->providers, i);






            if (prov->flag_fallback) {
                activated_fallback_count++;
                provider_activate(prov);
            }
        }







        if (activated_fallback_count > 0)
            store->use_fallbacks = 0;
    }
}
