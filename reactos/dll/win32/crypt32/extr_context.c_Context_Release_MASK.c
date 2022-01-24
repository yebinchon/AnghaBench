#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_3__* store; int /*<<< orphan*/  ref; } ;
typedef  TYPE_2__ context_t ;
struct TYPE_11__ {TYPE_1__* vtbl; } ;
typedef  TYPE_3__ WINECRYPT_CERTSTORE ;
struct TYPE_9__ {int /*<<< orphan*/  (* release ) (TYPE_3__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* releaseContext ) (TYPE_3__*,TYPE_2__*) ;} ;
typedef  scalar_t__ LONG ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 

void FUNC5(context_t *context)
{
    LONG ref = FUNC0(&context->ref);

    FUNC1("(%p) ref=%d\n", context, ref);
    FUNC2(ref >= 0);

    if (!ref) {
        WINECRYPT_CERTSTORE *store = context->store;

        /* This is the last reference, but the context still may be in a store.
         * We release our store reference, but leave it up to store to free or keep the context. */
        store->vtbl->releaseContext(store, context);
        store->vtbl->release(store, 0);
    }
}