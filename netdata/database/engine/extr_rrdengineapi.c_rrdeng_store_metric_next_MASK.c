#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ usec_t ;
typedef  int uint8_t ;
struct TYPE_18__ {int /*<<< orphan*/  metric_API_producers; } ;
struct TYPE_15__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  latest_corr_id; } ;
struct page_cache {TYPE_3__ committed_page_index; } ;
struct rrdengine_instance {TYPE_6__ stats; struct page_cache pg_cache; } ;
struct rrdeng_page_descr {int page_length; scalar_t__ start_time; TYPE_4__* pg_cache_descr; } ;
struct rrdeng_collect_handle {int unaligned_page; TYPE_10__* page_index; scalar_t__ page_correlation_id; struct rrdeng_page_descr* descr; struct rrdengine_instance* ctx; } ;
typedef  int /*<<< orphan*/  storage_number ;
typedef  int /*<<< orphan*/  number ;
struct TYPE_19__ {TYPE_5__* rrdset; TYPE_2__* state; } ;
struct TYPE_17__ {int rrddim_page_alignment; } ;
struct TYPE_16__ {int /*<<< orphan*/ * page; } ;
struct TYPE_13__ {struct rrdeng_collect_handle rrdeng; } ;
struct TYPE_14__ {TYPE_1__ handle; } ;
struct TYPE_12__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_7__ RRDDIM ;

/* Variables and functions */
 int D_RRDENGINE ; 
 scalar_t__ INVALID_TIME ; 
 int RRDENG_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int debug_flags ; 
 int /*<<< orphan*/  FUNC2 (TYPE_10__*,struct rrdeng_page_descr*) ; 
 int /*<<< orphan*/  FUNC3 (struct rrdeng_page_descr*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rrdengine_instance*,TYPE_10__*,struct rrdeng_page_descr*) ; 
 int /*<<< orphan*/  FUNC5 (struct rrdeng_page_descr*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC7 (struct rrdengine_instance*,int /*<<< orphan*/ *,struct rrdeng_page_descr**) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(RRDDIM *rd, usec_t point_in_time, storage_number number)
{
    struct rrdeng_collect_handle *handle;
    struct rrdengine_instance *ctx;
    struct page_cache *pg_cache;
    struct rrdeng_page_descr *descr;
    storage_number *page;
    uint8_t must_flush_unaligned_page = 0, perfect_page_alignment = 0;

    handle = &rd->state->handle.rrdeng;
    ctx = handle->ctx;
    pg_cache = &ctx->pg_cache;
    descr = handle->descr;

    if (descr) {
        /* Make alignment decisions */

        if (descr->page_length == rd->rrdset->rrddim_page_alignment) {
            /* this is the leading dimension that defines chart alignment */
            perfect_page_alignment = 1;
        }
        /* is the metric far enough out of alignment with the others? */
        if (FUNC9(descr->page_length + sizeof(number) < rd->rrdset->rrddim_page_alignment)) {
            handle->unaligned_page = 1;
            FUNC1(D_RRDENGINE, "Metric page is not aligned with chart:");
            if (FUNC9(debug_flags & D_RRDENGINE))
                FUNC5(descr);
        }
        if (FUNC9(handle->unaligned_page &&
                     /* did the other metrics change page? */
                     rd->rrdset->rrddim_page_alignment <= sizeof(number))) {
            FUNC1(D_RRDENGINE, "Flushing unaligned metric page.");
            must_flush_unaligned_page = 1;
            handle->unaligned_page = 0;
        }
    }
    if (FUNC9(NULL == descr ||
                 descr->page_length + sizeof(number) > RRDENG_BLOCK_SIZE ||
                 must_flush_unaligned_page)) {
        FUNC8(rd);

        page = FUNC7(ctx, &handle->page_index->id, &descr);
        FUNC0(page);

        handle->descr = descr;

        FUNC10(&pg_cache->committed_page_index.lock);
        handle->page_correlation_id = pg_cache->committed_page_index.latest_corr_id++;
        FUNC11(&pg_cache->committed_page_index.lock);

        if (0 == rd->rrdset->rrddim_page_alignment) {
            /* this is the leading dimension that defines chart alignment */
            perfect_page_alignment = 1;
        }
    }
    page = descr->pg_cache_descr->page;
    page[descr->page_length / sizeof(number)] = number;
    FUNC3(descr, point_in_time, descr->page_length + sizeof(number));

    if (perfect_page_alignment)
        rd->rrdset->rrddim_page_alignment = descr->page_length;
    if (FUNC9(INVALID_TIME == descr->start_time)) {
        descr->start_time = point_in_time;

        FUNC6(&ctx->stats.metric_API_producers, 1);
        FUNC4(ctx, handle->page_index, descr);
    } else {
        FUNC2(handle->page_index, descr);
    }
}