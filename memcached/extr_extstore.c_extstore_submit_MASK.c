#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  cond; int /*<<< orphan*/  mutex; int /*<<< orphan*/  depth; TYPE_2__* queue; } ;
typedef  TYPE_1__ store_io_thread ;
typedef  int /*<<< orphan*/  store_engine ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef  TYPE_2__ obj_io ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(void *ptr, obj_io *io) {
    store_engine *e = (store_engine *)ptr;
    store_io_thread *t = FUNC0(e);

    FUNC3(&t->mutex);
    if (t->queue == NULL) {
        t->queue = io;
    } else {
        /* Have to put the *io stack at the end of current queue.
         * FIXME: Optimize by tracking tail.
         */
        obj_io *tmp = t->queue;
        while (tmp->next != NULL) {
            tmp = tmp->next;
            FUNC1(tmp != t->queue);
        }
        tmp->next = io;
    }
    // TODO: extstore_submit(ptr, io, count)
    obj_io *tio = io;
    while (tio != NULL) {
        t->depth++;
        tio = tio->next;
    }
    FUNC4(&t->mutex);

    //pthread_mutex_lock(&t->mutex);
    FUNC2(&t->cond);
    //pthread_mutex_unlock(&t->mutex);
    return 0;
}