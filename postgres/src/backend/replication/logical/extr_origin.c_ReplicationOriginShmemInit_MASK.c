#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  origin_cv; int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  tranche_id; TYPE_3__* states; } ;
typedef  TYPE_1__ ReplicationStateCtl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  LWTRANCHE_REPLICATION_ORIGIN ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ,int*) ; 
 int max_replication_slots ; 
 TYPE_3__* replication_states ; 
 TYPE_1__* replication_states_ctl ; 

void
FUNC6(void)
{
	bool		found;

	if (max_replication_slots == 0)
		return;

	replication_states_ctl = (ReplicationStateCtl *)
		FUNC5("ReplicationOriginState",
						FUNC4(),
						&found);
	replication_states = replication_states_ctl->states;

	if (!found)
	{
		int			i;

		replication_states_ctl->tranche_id = LWTRANCHE_REPLICATION_ORIGIN;

		FUNC3(replication_states, 0, FUNC4());

		for (i = 0; i < max_replication_slots; i++)
		{
			FUNC1(&replication_states[i].lock,
							 replication_states_ctl->tranche_id);
			FUNC0(&replication_states[i].origin_cv);
		}
	}

	FUNC2(replication_states_ctl->tranche_id,
						  "replication_origin");
}