#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct provider_store_st {int /*<<< orphan*/  lock; int /*<<< orphan*/  providers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct provider_store_st*) ; 
 int /*<<< orphan*/  ossl_provider_free ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *vstore)
{
    struct provider_store_st *store = vstore;

    if (store == NULL)
        return;
    FUNC2(store->providers, ossl_provider_free);
    FUNC0(store->lock);
    FUNC1(store);
}