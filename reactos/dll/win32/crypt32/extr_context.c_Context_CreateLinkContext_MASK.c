#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int ref; TYPE_3__* store; int /*<<< orphan*/  properties; struct TYPE_12__* linked; int /*<<< orphan*/  vtbl; } ;
typedef  TYPE_2__ context_t ;
struct TYPE_13__ {TYPE_1__* vtbl; } ;
typedef  TYPE_3__ WINECRYPT_CERTSTORE ;
struct TYPE_11__ {int /*<<< orphan*/  (* addref ) (TYPE_3__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

context_t *FUNC6(unsigned int contextSize, context_t *linked, WINECRYPT_CERTSTORE *store)
{
    context_t *context;

    FUNC2("(%d, %p)\n", contextSize, linked);

    context = FUNC1(sizeof(context_t) + contextSize);
    if (!context)
        return NULL;

    FUNC4(FUNC3(context), FUNC3(linked), contextSize);
    context->vtbl = linked->vtbl;
    context->ref = 1;
    context->linked = linked;
    context->properties = linked->properties;
    FUNC0(linked);

    store->vtbl->addref(store);
    context->store = store;

    FUNC2("returning %p\n", context);
    return context;
}