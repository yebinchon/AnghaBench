#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ allocated; int /*<<< orphan*/  mutex; int /*<<< orphan*/  id; TYPE_1__* wbuf; int /*<<< orphan*/  active; } ;
typedef  TYPE_2__ store_page ;
struct TYPE_14__ {unsigned int page_bucketcount; scalar_t__ page_size; int /*<<< orphan*/  mutex; TYPE_2__** page_buckets; } ;
typedef  TYPE_3__ store_engine ;
struct TYPE_15__ {scalar_t__ len; int /*<<< orphan*/  page_id; int /*<<< orphan*/  buf; } ;
typedef  TYPE_4__ obj_io ;
struct TYPE_12__ {int full; scalar_t__ free; int /*<<< orphan*/  buf_pos; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_3__*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(void *ptr, unsigned int bucket,
        unsigned int free_bucket, obj_io *io) {
    store_engine *e = (store_engine *)ptr;
    store_page *p;
    int ret = -1;
    if (bucket >= e->page_bucketcount)
        return ret;

    FUNC3(&e->mutex);
    p = e->page_buckets[bucket];
    if (!p) {
        p = FUNC0(e, bucket, free_bucket);
    }
    FUNC4(&e->mutex);
    if (!p)
        return ret;

    FUNC3(&p->mutex);

    // FIXME: can't null out page_buckets!!!
    // page is full, clear bucket and retry later.
    if (!p->active ||
            ((!p->wbuf || p->wbuf->full) && p->allocated >= e->page_size)) {
        FUNC4(&p->mutex);
        FUNC3(&e->mutex);
        FUNC0(e, bucket, free_bucket);
        FUNC4(&e->mutex);
        return ret;
    }

    // if io won't fit, submit IO for wbuf and find new one.
    if (p->wbuf && p->wbuf->free < io->len && !p->wbuf->full) {
        FUNC2(e, p);
        p->wbuf->full = true;
    }

    if (!p->wbuf && p->allocated < e->page_size) {
        FUNC1(e, p);
    }

    // hand over buffer for caller to copy into
    // leaves p locked.
    if (p->wbuf && !p->wbuf->full && p->wbuf->free >= io->len) {
        io->buf = p->wbuf->buf_pos;
        io->page_id = p->id;
        return 0;
    }

    FUNC4(&p->mutex);
    // p->written is incremented post-wbuf flush
    return ret;
}