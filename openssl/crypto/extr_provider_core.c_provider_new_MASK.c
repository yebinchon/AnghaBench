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
struct TYPE_6__ {int /*<<< orphan*/ * init_function; int /*<<< orphan*/ * name; int /*<<< orphan*/ * refcnt_lock; } ;
typedef  int /*<<< orphan*/  OSSL_provider_init_fn ;
typedef  TYPE_1__ OSSL_PROVIDER ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_F_PROVIDER_NEW ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static OSSL_PROVIDER *FUNC6(const char *name,
                                   OSSL_provider_init_fn *init_function)
{
    OSSL_PROVIDER *prov = NULL;

    if ((prov = FUNC3(sizeof(*prov))) == NULL
#ifndef HAVE_ATOMICS
        || (prov->refcnt_lock = FUNC0()) == NULL
#endif
        || !FUNC5(prov) /* +1 One reference to be returned */
        || (prov->name = FUNC2(name)) == NULL) {
        FUNC4(prov);
        FUNC1(CRYPTO_F_PROVIDER_NEW, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    prov->init_function = init_function;
    return prov;
}