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
struct TYPE_6__ {TYPE_3__* wbuf; int /*<<< orphan*/  allocated; } ;
typedef  TYPE_1__ store_page ;
struct TYPE_7__ {int /*<<< orphan*/  mutex; TYPE_3__* wbuf_stack; } ;
typedef  TYPE_2__ store_engine ;
struct TYPE_8__ {int full; int flushed; int /*<<< orphan*/  buf; int /*<<< orphan*/  buf_pos; scalar_t__ size; scalar_t__ free; int /*<<< orphan*/  offset; struct TYPE_8__* next; } ;
typedef  TYPE_3__ _store_wbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(store_engine *e, store_page *p) {
    _store_wbuf *wbuf = NULL;
    FUNC0(!p->wbuf);
    FUNC1(&e->mutex);
    if (e->wbuf_stack) {
        wbuf = e->wbuf_stack;
        e->wbuf_stack = wbuf->next;
        wbuf->next = 0;
    }
    FUNC2(&e->mutex);
    if (wbuf) {
        wbuf->offset = p->allocated;
        p->allocated += wbuf->size;
        wbuf->free = wbuf->size;
        wbuf->buf_pos = wbuf->buf;
        wbuf->full = false;
        wbuf->flushed = false;

        p->wbuf = wbuf;
    }
}