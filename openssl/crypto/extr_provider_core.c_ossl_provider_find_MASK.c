#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct provider_store_st {int /*<<< orphan*/  lock; int /*<<< orphan*/  providers; } ;
struct TYPE_6__ {char* name; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ OSSL_PROVIDER ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPENSSL_INIT_LOAD_CONFIG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct provider_store_st* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int) ; 

OSSL_PROVIDER *FUNC7(OPENSSL_CTX *libctx, const char *name,
                                  int noconfig)
{
    struct provider_store_st *store = NULL;
    OSSL_PROVIDER *prov = NULL;

    if ((store = FUNC3(libctx)) != NULL) {
        OSSL_PROVIDER tmpl = { 0, };
        int i;

#ifndef FIPS_MODE
        /*
         * Make sure any providers are loaded from config before we try to find
         * them.
         */
        if (!noconfig)
            FUNC2(OPENSSL_INIT_LOAD_CONFIG, NULL);
#endif

        tmpl.name = (char *)name;
        FUNC1(store->lock);
        if ((i = FUNC5(store->providers, &tmpl)) == -1
            || (prov = FUNC6(store->providers, i)) == NULL
            || !FUNC4(prov))
            prov = NULL;
        FUNC0(store->lock);
    }

    return prov;
}