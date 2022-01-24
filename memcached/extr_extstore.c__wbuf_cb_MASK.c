#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ written; int active; int /*<<< orphan*/  mutex; TYPE_4__* wbuf; } ;
typedef  TYPE_1__ store_page ;
struct TYPE_7__ {scalar_t__ page_size; int /*<<< orphan*/  mutex; TYPE_3__* io_stack; TYPE_4__* wbuf_stack; TYPE_1__* pages; } ;
typedef  TYPE_2__ store_engine ;
struct TYPE_8__ {size_t page_id; struct TYPE_8__* next; scalar_t__ data; } ;
typedef  TYPE_3__ obj_io ;
struct TYPE_9__ {int flushed; scalar_t__ offset; scalar_t__ size; struct TYPE_9__* next; } ;
typedef  TYPE_4__ _store_wbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *ep, obj_io *io, int ret) {
    store_engine *e = (store_engine *)ep;
    store_page *p = &e->pages[io->page_id];
    _store_wbuf *w = (_store_wbuf *) io->data;

    // TODO: Examine return code. Not entirely sure how to handle errors.
    // Naive first-pass should probably cause the page to close/free.
    w->flushed = true;
    FUNC1(&p->mutex);
    FUNC0(p->wbuf != NULL && p->wbuf == w);
    FUNC0(p->written == w->offset);
    p->written += w->size;
    p->wbuf = NULL;

    if (p->written == e->page_size)
        p->active = false;

    // return the wbuf
    FUNC1(&e->mutex);
    w->next = e->wbuf_stack;
    e->wbuf_stack = w;
    // also return the IO we just used.
    io->next = e->io_stack;
    e->io_stack = io;
    FUNC2(&e->mutex);
    FUNC2(&p->mutex);
}