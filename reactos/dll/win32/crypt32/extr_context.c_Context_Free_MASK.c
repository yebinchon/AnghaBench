#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  linked; TYPE_1__* vtbl; int /*<<< orphan*/  properties; int /*<<< orphan*/  ref; } ;
typedef  TYPE_2__ context_t ;
struct TYPE_7__ {int /*<<< orphan*/  (* free ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

void FUNC6(context_t *context)
{
    FUNC3("(%p)\n", context);

    FUNC4(!context->ref);

    if (!context->linked) {
        FUNC0(context->properties);
        context->vtbl->free(context);
    }else {
        FUNC1(context->linked);
    }

    FUNC2(context);
}