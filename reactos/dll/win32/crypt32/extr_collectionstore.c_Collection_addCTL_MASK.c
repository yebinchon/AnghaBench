#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/ * ptr; } ;
struct TYPE_14__ {TYPE_1__ u; } ;
struct TYPE_13__ {TYPE_3__ base; } ;
typedef  TYPE_2__ ctl_t ;
typedef  TYPE_3__ context_t ;
typedef  int /*<<< orphan*/  WINE_STORE_LIST_ENTRY ;
typedef  int /*<<< orphan*/  WINE_COLLECTIONSTORE ;
typedef  int /*<<< orphan*/  WINECRYPT_CERTSTORE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,TYPE_3__*,TYPE_3__**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  ctls ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  store_vtbl_t ; 

__attribute__((used)) static BOOL FUNC4(WINECRYPT_CERTSTORE *store, context_t *ctl,
 context_t *toReplace, context_t **ppStoreContext, BOOL use_link)
{
    BOOL ret;
    context_t *childContext = NULL;
    WINE_COLLECTIONSTORE *cs = (WINE_COLLECTIONSTORE*)store;

    ret = FUNC0(cs, FUNC3(store_vtbl_t, ctls),
     ctl, toReplace, &childContext);
    if (ppStoreContext && childContext)
    {
        WINE_STORE_LIST_ENTRY *storeEntry = childContext->u.ptr;
        ctl_t *context = (ctl_t*)FUNC1(cs, storeEntry,
         childContext);

        *ppStoreContext = &context->base;
    }
    if (childContext)
        FUNC2(childContext);
    return ret;
}