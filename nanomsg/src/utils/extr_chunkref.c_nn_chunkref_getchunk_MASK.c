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
struct nn_chunkref_chunk {void* chunk; } ;
struct TYPE_2__ {int* ref; } ;
struct nn_chunkref {TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int*,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,void**) ; 

void *FUNC3 (struct nn_chunkref *self)
{
    int rc;
    struct nn_chunkref_chunk *ch;
    void *chunk;

    if (self->u.ref [0] == 0xff) {
        ch = (struct nn_chunkref_chunk*) self;
        self->u.ref [0] = 0;
        return ch->chunk;
    }

    rc = FUNC2 (self->u.ref [0], 0, &chunk);
    FUNC0 (rc == 0);
    FUNC1 (chunk, &self->u.ref [1], self->u.ref [0]);
    self->u.ref [0] = 0;
    return chunk;
}