#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int u_size; int v_size; short** adjacency; short* pair_uv; short* pair_vu; short* distance; short* queue; scalar_t__ matching; } ;
typedef  TYPE_1__ BipartiteMatchState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ERROR ; 
 int SHRT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 

BipartiteMatchState *
FUNC6(int u_size, int v_size, short **adjacency)
{
	BipartiteMatchState *state = FUNC4(sizeof(BipartiteMatchState));

	if (u_size < 0 || u_size >= SHRT_MAX ||
		v_size < 0 || v_size >= SHRT_MAX)
		FUNC1(ERROR, "invalid set size for BipartiteMatch");

	state->u_size = u_size;
	state->v_size = v_size;
	state->adjacency = adjacency;
	state->matching = 0;
	state->pair_uv = (short *) FUNC5((u_size + 1) * sizeof(short));
	state->pair_vu = (short *) FUNC5((v_size + 1) * sizeof(short));
	state->distance = (short *) FUNC4((u_size + 1) * sizeof(short));
	state->queue = (short *) FUNC4((u_size + 2) * sizeof(short));

	while (FUNC2(state))
	{
		int			u;

		for (u = 1; u <= u_size; u++)
		{
			if (state->pair_uv[u] == 0)
				if (FUNC3(state, u))
					state->matching++;
		}

		FUNC0(); /* just in case */
	}

	return state;
}