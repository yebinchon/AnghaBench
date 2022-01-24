#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct rrdengine_worker_config {int /*<<< orphan*/  loop; struct rrdengine_instance* ctx; } ;
struct TYPE_5__ {unsigned int io_read_bytes; unsigned int io_read_extent_bytes; unsigned int pg_cache_backfills; int /*<<< orphan*/  io_read_extents; int /*<<< orphan*/  io_read_requests; } ;
struct rrdengine_instance {TYPE_2__ stats; } ;
struct rrdengine_datafile {int /*<<< orphan*/  file; } ;
struct rrdeng_page_descr {struct page_cache_descr* pg_cache_descr; TYPE_1__* extent; } ;
struct page_cache_descr {int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {struct extent_io_descriptor* data; } ;
struct extent_io_descriptor {unsigned int descr_count; unsigned int bytes; unsigned int pos; int /*<<< orphan*/  iov; TYPE_3__ req; scalar_t__ buf; int /*<<< orphan*/  release_descr; int /*<<< orphan*/ * completion; struct rrdeng_page_descr** descr_array; } ;
struct TYPE_4__ {unsigned int offset; unsigned int size; struct rrdengine_datafile* datafile; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  RRDFILE_ALIGNMENT ; 
 int /*<<< orphan*/  RRD_PAGE_READ_PENDING ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 struct extent_io_descriptor* FUNC3 (int) ; 
 int FUNC4 (void*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  read_extent_cb ; 
 int /*<<< orphan*/  FUNC5 (struct rrdengine_instance*,struct rrdeng_page_descr*) ; 
 int /*<<< orphan*/  FUNC6 (struct rrdengine_instance*,struct rrdeng_page_descr*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (void*,unsigned int) ; 
 int FUNC10 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct rrdengine_worker_config* wc,
                           struct rrdeng_page_descr **descr,
                           unsigned count,
                           uint8_t release_descr)
{
    struct rrdengine_instance *ctx = wc->ctx;
    struct page_cache_descr *pg_cache_descr;
    int ret;
    unsigned i, size_bytes, pos, real_io_size;
//    uint32_t payload_length;
    struct extent_io_descriptor *xt_io_descr;
    struct rrdengine_datafile *datafile;

    datafile = descr[0]->extent->datafile;
    pos = descr[0]->extent->offset;
    size_bytes = descr[0]->extent->size;

    xt_io_descr = FUNC3(sizeof(*xt_io_descr));
    ret = FUNC4((void *)&xt_io_descr->buf, RRDFILE_ALIGNMENT, FUNC0(size_bytes));
    if (FUNC8(ret)) {
        FUNC2("posix_memalign:%s", FUNC7(ret));
        /* freez(xt_io_descr);
        return;*/
    }
    for (i = 0 ; i < count; ++i) {
        FUNC5(ctx, descr[i]);
        pg_cache_descr = descr[i]->pg_cache_descr;
        pg_cache_descr->flags |= RRD_PAGE_READ_PENDING;
//        payload_length = descr[i]->page_length;
        FUNC6(ctx, descr[i]);

        xt_io_descr->descr_array[i] = descr[i];
    }
    xt_io_descr->descr_count = count;
    xt_io_descr->bytes = size_bytes;
    xt_io_descr->pos = pos;
    xt_io_descr->req.data = xt_io_descr;
    xt_io_descr->completion = NULL;
    /* xt_io_descr->descr_commit_idx_array[0] */
    xt_io_descr->release_descr = release_descr;

    real_io_size = FUNC0(size_bytes);
    xt_io_descr->iov = FUNC9((void *)xt_io_descr->buf, real_io_size);
    ret = FUNC10(wc->loop, &xt_io_descr->req, datafile->file, &xt_io_descr->iov, 1, pos, read_extent_cb);
    FUNC1 (-1 != ret);
    ctx->stats.io_read_bytes += real_io_size;
    ++ctx->stats.io_read_requests;
    ctx->stats.io_read_extent_bytes += real_io_size;
    ++ctx->stats.io_read_extents;
    ctx->stats.pg_cache_backfills += count;
}