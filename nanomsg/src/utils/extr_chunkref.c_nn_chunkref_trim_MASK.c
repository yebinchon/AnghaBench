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
struct nn_chunkref_chunk {int /*<<< orphan*/  chunk; } ;
struct TYPE_2__ {int* ref; } ;
struct nn_chunkref {TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t*,size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t) ; 

void FUNC3 (struct nn_chunkref *self, size_t n)
{
    struct nn_chunkref_chunk *ch;

    if (self->u.ref [0] == 0xff) {
        ch = (struct nn_chunkref_chunk*) self;
        ch->chunk = FUNC2 (ch->chunk, n);
        return;
    }

    FUNC1 (self->u.ref [0] >= n);
    FUNC0 (&self->u.ref [1], &self->u.ref [1 + n], self->u.ref [0] - n);
    self->u.ref [0] -= (uint8_t) n;
}