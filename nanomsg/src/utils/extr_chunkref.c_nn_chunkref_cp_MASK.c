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
struct nn_chunkref_chunk {int /*<<< orphan*/  chunk; } ;
struct TYPE_2__ {int* ref; } ;
struct nn_chunkref {TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nn_chunkref*,struct nn_chunkref*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void FUNC2 (struct nn_chunkref *dst, struct nn_chunkref *src)
{
    struct nn_chunkref_chunk *ch;

    if (src->u.ref [0] == 0xff) {
        ch = (struct nn_chunkref_chunk*) src;
        FUNC1 (ch->chunk, 1);
    }
    FUNC0 (dst, src, sizeof (struct nn_chunkref));
}