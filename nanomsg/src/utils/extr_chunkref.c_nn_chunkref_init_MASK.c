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
typedef  scalar_t__ uint8_t ;
struct nn_chunkref_chunk {int tag; int /*<<< orphan*/  chunk; } ;
struct TYPE_2__ {scalar_t__* ref; } ;
struct nn_chunkref {TYPE_1__ u; } ;

/* Variables and functions */
 size_t NN_CHUNKREF_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2 (struct nn_chunkref *self, size_t size)
{
    int rc;
    struct nn_chunkref_chunk *ch;

    if (size < NN_CHUNKREF_MAX) {
        self->u.ref [0] = (uint8_t) size;
        return;
    }

    ch = (struct nn_chunkref_chunk*) self;
    ch->tag = 0xff;
    rc = FUNC1 (size, 0, &ch->chunk);
    FUNC0 (rc == 0);
}