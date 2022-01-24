#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  metric_API_producers; } ;
struct rrdengine_instance {TYPE_3__ stats; } ;
struct rrdeng_page_descr {TYPE_6__* pg_cache_descr; int /*<<< orphan*/  page_length; } ;
struct rrdeng_collect_handle {struct rrdeng_page_descr* descr; struct rrdeng_page_descr* prev_descr; int /*<<< orphan*/  page_correlation_id; struct rrdengine_instance* ctx; } ;
struct TYPE_11__ {struct rrdeng_page_descr* page; } ;
struct TYPE_10__ {TYPE_2__* state; } ;
struct TYPE_7__ {struct rrdeng_collect_handle rrdeng; } ;
struct TYPE_8__ {TYPE_1__ handle; } ;
typedef  TYPE_4__ RRDDIM ;

/* Variables and functions */
 int D_RRDENGINE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int debug_flags ; 
 int /*<<< orphan*/  FUNC2 (struct rrdeng_page_descr*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rrdeng_page_descr*) ; 
 int /*<<< orphan*/  FUNC5 (struct rrdengine_instance*,struct rrdeng_page_descr*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rrdengine_instance*,struct rrdeng_page_descr*) ; 
 int FUNC7 (struct rrdeng_page_descr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rrdeng_page_descr*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct rrdengine_instance*,struct rrdeng_page_descr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct rrdengine_instance*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC12 (struct rrdengine_instance*,struct rrdeng_page_descr*) ; 
 int /*<<< orphan*/  FUNC13 (struct rrdengine_instance*,struct rrdeng_page_descr*) ; 
 scalar_t__ FUNC14 (int) ; 

void FUNC15(RRDDIM *rd)
{
    struct rrdeng_collect_handle *handle;
    struct rrdengine_instance *ctx;
    struct rrdeng_page_descr *descr;

    handle = &rd->state->handle.rrdeng;
    ctx = handle->ctx;
    descr = handle->descr;
    if (FUNC14(NULL == descr)) {
        return;
    }
    if (FUNC3(descr->page_length)) {
        int ret, page_is_empty;

        FUNC9(&ctx->stats.metric_API_producers, -1);

        if (handle->prev_descr) {
            /* unpin old second page */
            FUNC6(ctx, handle->prev_descr);
        }
        page_is_empty = FUNC4(descr);
        if (page_is_empty) {
            FUNC1(D_RRDENGINE, "Page has empty metrics only, deleting:");
            if (FUNC14(debug_flags & D_RRDENGINE))
                FUNC8(descr);
            FUNC6(ctx, descr);
            FUNC5(ctx, descr, 1);
            handle->prev_descr = NULL;
        } else {
            /* added 1 extra reference to keep 2 dirty pages pinned per metric, expected refcnt = 2 */
            FUNC12(ctx, descr);
            ret = FUNC7(descr, 0);
            FUNC13(ctx, descr);
            FUNC0 (1 == ret);

            FUNC10(ctx, descr, handle->page_correlation_id);
            handle->prev_descr = descr;
        }
    } else {
        FUNC2(descr->pg_cache_descr->page);
        FUNC11(ctx, descr->pg_cache_descr);
        FUNC2(descr);
    }
    handle->descr = NULL;
}