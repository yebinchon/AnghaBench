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
struct TYPE_6__ {int /*<<< orphan*/ * global_properties; int /*<<< orphan*/  ctx; } ;
typedef  TYPE_1__ OSSL_METHOD_STORE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

int FUNC5(OSSL_METHOD_STORE *store,
                                            const char *prop_query) {
    int ret = 0;

    if (store == NULL)
        return 1;

    FUNC4(store);
    FUNC0(store);
    if (prop_query == NULL) {
        FUNC2(store->global_properties);
        store->global_properties = NULL;
        FUNC3(store);
        return 1;
    }
    store->global_properties = FUNC1(store->ctx, prop_query);
    ret = store->global_properties != NULL;
    FUNC3(store);
    return ret;
}