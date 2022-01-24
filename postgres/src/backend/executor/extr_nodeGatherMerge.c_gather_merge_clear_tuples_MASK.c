#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ readCounter; scalar_t__ nTuples; int /*<<< orphan*/ * tuple; } ;
struct TYPE_4__ {int nreaders; int /*<<< orphan*/ * gm_slots; TYPE_2__* gm_tuple_buffers; } ;
typedef  TYPE_1__ GatherMergeState ;
typedef  TYPE_2__ GMReaderTupleBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(GatherMergeState *gm_state)
{
	int			i;

	for (i = 0; i < gm_state->nreaders; i++)
	{
		GMReaderTupleBuffer *tuple_buffer = &gm_state->gm_tuple_buffers[i];

		while (tuple_buffer->readCounter < tuple_buffer->nTuples)
			FUNC1(tuple_buffer->tuple[tuple_buffer->readCounter++]);

		FUNC0(gm_state->gm_slots[i + 1]);
	}
}