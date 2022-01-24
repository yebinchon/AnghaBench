#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  refcount; scalar_t__ offset; int /*<<< orphan*/  fd; scalar_t__ written; int /*<<< orphan*/  active; int /*<<< orphan*/  version; int /*<<< orphan*/  closed; int /*<<< orphan*/  free; } ;
typedef  TYPE_2__ store_page ;
struct TYPE_14__ {int depth; int /*<<< orphan*/  mutex; TYPE_5__* queue; int /*<<< orphan*/  cond; TYPE_4__* e; } ;
typedef  TYPE_3__ store_io_thread ;
struct TYPE_12__ {int /*<<< orphan*/  objects_read; int /*<<< orphan*/  bytes_read; } ;
struct TYPE_15__ {int io_depth; TYPE_1__ stats; TYPE_2__* pages; } ;
typedef  TYPE_4__ store_engine ;
struct TYPE_16__ {size_t page_id; int mode; int /*<<< orphan*/  (* cb ) (TYPE_4__*,TYPE_5__*,int) ;scalar_t__ offset; int /*<<< orphan*/  len; int /*<<< orphan*/  buf; int /*<<< orphan*/  iovcnt; int /*<<< orphan*/ * iov; int /*<<< orphan*/  page_version; struct TYPE_16__* next; } ;
typedef  TYPE_5__ obj_io ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  OBJ_IO_READ 129 
#define  OBJ_IO_WRITE 128 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int FUNC3 (TYPE_2__*,TYPE_5__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,TYPE_5__*,int) ; 

__attribute__((used)) static void *FUNC15(void *arg) {
    store_io_thread *me = (store_io_thread *)arg;
    store_engine *e = me->e;
    while (1) {
        obj_io *io_stack = NULL;
        FUNC9(&me->mutex);
        if (me->queue == NULL) {
            FUNC8(&me->cond, &me->mutex);
        }

        // Pull and disconnect a batch from the queue
        if (me->queue != NULL) {
            int i;
            obj_io *end = NULL;
            io_stack = me->queue;
            end = io_stack;
            for (i = 1; i < e->io_depth; i++) {
                if (end->next) {
                    end = end->next;
                } else {
                    break;
                }
            }
            me->depth -= i;
            me->queue = end->next;
            end->next = NULL;
        }
        FUNC10(&me->mutex);

        obj_io *cur_io = io_stack;
        while (cur_io) {
            // We need to note next before the callback in case the obj_io
            // gets reused.
            obj_io *next = cur_io->next;
            int ret = 0;
            int do_op = 1;
            store_page *p = &e->pages[cur_io->page_id];
            // TODO: loop if not enough bytes were read/written.
            switch (cur_io->mode) {
                case OBJ_IO_READ:
                    // Page is currently open. deal if read is past the end.
                    FUNC9(&p->mutex);
                    if (!p->free && !p->closed && p->version == cur_io->page_version) {
                        if (p->active && cur_io->offset >= p->written) {
                            ret = FUNC3(p, cur_io);
                            do_op = 0;
                        } else {
                            p->refcount++;
                        }
                        FUNC1(e);
                        e->stats.bytes_read += cur_io->len;
                        e->stats.objects_read++;
                        FUNC2(e);
                    } else {
                        do_op = 0;
                        ret = -2; // TODO: enum in IO for status?
                    }
                    FUNC10(&p->mutex);
                    if (do_op) {
#ifdef __APPLE__
                        ret = lseek(p->fd, SEEK_SET, p->offset + cur_io->offset);
                        if (ret >= 0) {
                            if (cur_io->iov == NULL) {
                                ret = read(p->fd, cur_io->buf, cur_io->len);
                            } else {
                                ret = readv(p->fd, cur_io->iov, cur_io->iovcnt);
                            }
                        }
#else
                        if (cur_io->iov == NULL) {
                            ret = FUNC6(p->fd, cur_io->buf, cur_io->len, p->offset + cur_io->offset);
                        } else {
                            ret = FUNC7(p->fd, cur_io->iov, cur_io->iovcnt, p->offset + cur_io->offset);
                        }
#endif
                    }
                    break;
                case OBJ_IO_WRITE:
                    do_op = 0;
                    // FIXME: Should hold refcount during write. doesn't
                    // currently matter since page can't free while active.
                    ret = FUNC11(p->fd, cur_io->buf, cur_io->len, p->offset + cur_io->offset);
                    break;
            }
            if (ret == 0) {
                FUNC0("read returned nothing\n");
            }

#ifdef EXTSTORE_DEBUG
            if (ret == -1) {
                perror("read/write op failed");
            }
#endif
            cur_io->cb(e, cur_io, ret);
            if (do_op) {
                FUNC9(&p->mutex);
                p->refcount--;
                FUNC10(&p->mutex);
            }
            cur_io = next;
        }
    }

    return NULL;
}