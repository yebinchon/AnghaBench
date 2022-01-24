#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct rrdengine_instance {int dummy; } ;
struct rrdeng_collect_handle {scalar_t__ prev_descr; struct rrdengine_instance* ctx; } ;
struct TYPE_8__ {TYPE_2__* state; } ;
struct TYPE_6__ {struct rrdeng_collect_handle rrdeng; } ;
struct TYPE_7__ {TYPE_1__ handle; } ;
typedef  TYPE_3__ RRDDIM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rrdengine_instance*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 

void FUNC2(RRDDIM *rd)
{
    struct rrdeng_collect_handle *handle;
    struct rrdengine_instance *ctx;

    handle = &rd->state->handle.rrdeng;
    ctx = handle->ctx;
    FUNC1(rd);
    if (handle->prev_descr) {
        /* unpin old second page */
        FUNC0(ctx, handle->prev_descr);
    }
}