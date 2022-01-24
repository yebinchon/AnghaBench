#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nn_msgqueue_chunk {struct nn_msgqueue_chunk* next; int /*<<< orphan*/ * msgs; } ;
struct TYPE_2__ {size_t pos; struct nn_msgqueue_chunk* chunk; } ;
struct nn_msgqueue {int /*<<< orphan*/  mem; int /*<<< orphan*/  count; struct nn_msgqueue_chunk* cache; TYPE_1__ in; } ;
struct nn_msg {int /*<<< orphan*/  body; int /*<<< orphan*/  sphdr; } ;

/* Variables and functions */
 int EAGAIN ; 
 size_t NN_MSGQUEUE_GRANULARITY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct nn_msgqueue_chunk*) ; 
 int /*<<< orphan*/  FUNC3 (struct nn_msg*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5 (struct nn_msgqueue *self, struct nn_msg *msg)
{
    struct nn_msgqueue_chunk *o;

    /*  If there is no message in the queue. */
    if (FUNC4 (!self->count))
        return -EAGAIN;

    /*  Move the message from the pipe to the user. */
    FUNC3 (msg, &self->in.chunk->msgs [self->in.pos]);

    /*  Move to the next position. */
    ++self->in.pos;
    if (FUNC4 (self->in.pos == NN_MSGQUEUE_GRANULARITY)) {
        o = self->in.chunk;
        self->in.chunk = self->in.chunk->next;
        self->in.pos = 0;
        if (FUNC1 (!self->cache))
            self->cache = o;
        else
            FUNC2 (o);
    }

    /*  Adjust the statistics. */
    --self->count;
    self->mem -= (FUNC0 (&msg->sphdr) +
        FUNC0 (&msg->body));

    return 0;
}