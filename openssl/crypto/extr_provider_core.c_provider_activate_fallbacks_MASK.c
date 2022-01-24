#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct provider_store_st {scalar_t__ use_fallbacks; int /*<<< orphan*/  providers; } ;
struct TYPE_4__ {scalar_t__ flag_fallback; } ;
typedef  TYPE_1__ OSSL_PROVIDER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct provider_store_st *store)
{
    if (store->use_fallbacks) {
        int num_provs = FUNC1(store->providers);
        int activated_fallback_count = 0;
        int i;

        for (i = 0; i < num_provs; i++) {
            OSSL_PROVIDER *prov = FUNC2(store->providers, i);

            /*
             * Note that we don't care if the activation succeeds or not.
             * If it doesn't succeed, then any attempt to use any of the
             * fallback providers will fail anyway.
             */
            if (prov->flag_fallback) {
                activated_fallback_count++;
                FUNC0(prov);
            }
        }

        /*
         * We assume that all fallbacks have been added to the store before
         * any fallback is activated.
         * TODO: We may have to reconsider this, IF we find ourselves adding
         * fallbacks after any previous fallback has been activated.
         */
        if (activated_fallback_count > 0)
            store->use_fallbacks = 0;
    }
}