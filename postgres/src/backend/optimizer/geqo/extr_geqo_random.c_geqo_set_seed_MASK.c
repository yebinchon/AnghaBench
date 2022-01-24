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
typedef  int /*<<< orphan*/  seed ;
struct TYPE_5__ {int /*<<< orphan*/  random_state; } ;
struct TYPE_4__ {scalar_t__ join_search_private; } ;
typedef  TYPE_1__ PlannerInfo ;
typedef  TYPE_2__ GeqoPrivateData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,double*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC3(PlannerInfo *root, double seed)
{
	GeqoPrivateData *private = (GeqoPrivateData *) root->join_search_private;

	/*
	 * XXX. This seeding algorithm could certainly be improved - but it is not
	 * critical to do so.
	 */
	FUNC2(private->random_state, 0, sizeof(private->random_state));
	FUNC1(private->random_state,
		   &seed,
		   FUNC0(sizeof(private->random_state), sizeof(seed)));
}