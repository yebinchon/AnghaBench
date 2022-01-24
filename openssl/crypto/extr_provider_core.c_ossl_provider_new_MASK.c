#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct provider_store_st {int /*<<< orphan*/  lock; int /*<<< orphan*/  providers; } ;
struct TYPE_8__ {int /*<<< orphan*/  error_lib; struct provider_store_st* store; int /*<<< orphan*/ * libctx; } ;
typedef  int /*<<< orphan*/  OSSL_provider_init_fn ;
typedef  TYPE_1__ OSSL_PROVIDER ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_F_OSSL_PROVIDER_NEW ; 
 int /*<<< orphan*/  CRYPTO_R_PROVIDER_ALREADY_EXISTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_LIB_CRYPTO ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char const*) ; 
 struct provider_store_st* FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,TYPE_1__*) ; 

OSSL_PROVIDER *FUNC11(OPENSSL_CTX *libctx, const char *name,
                                 OSSL_provider_init_fn *init_function,
                                 int noconfig)
{
    struct provider_store_st *store = NULL;
    OSSL_PROVIDER *prov = NULL;

    if ((store = FUNC5(libctx)) == NULL)
        return NULL;

    if ((prov = FUNC6(libctx, name,
                                   noconfig)) != NULL) { /* refcount +1 */
        FUNC7(prov); /* refcount -1 */
        FUNC4(ERR_LIB_CRYPTO, CRYPTO_R_PROVIDER_ALREADY_EXISTS, NULL,
                       "name=%s", name);
        return NULL;
    }

    /* provider_new() generates an error, so no need here */
    if ((prov = FUNC9(name, init_function)) == NULL)
        return NULL;

    FUNC1(store->lock);
    if (!FUNC8(prov)) { /* +1 One reference for the store */
        FUNC7(prov); /* -1 Reference that was to be returned */
        prov = NULL;
    } else if (FUNC10(store->providers, prov) == 0) {
        FUNC7(prov); /* -1 Store reference */
        FUNC7(prov); /* -1 Reference that was to be returned */
        prov = NULL;
    } else {
        prov->libctx = libctx;
        prov->store = store;
#ifndef FIPS_MODE
        prov->error_lib = FUNC3();
#endif
    }
    FUNC0(store->lock);

    if (prov == NULL)
        FUNC2(CRYPTO_F_OSSL_PROVIDER_NEW, ERR_R_MALLOC_FAILURE);

    /*
     * At this point, the provider is only partially "loaded".  To be
     * fully "loaded", ossl_provider_activate() must also be called.
     */

    return prov;
}