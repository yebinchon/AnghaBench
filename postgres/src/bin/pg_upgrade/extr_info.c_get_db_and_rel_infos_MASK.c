#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ verbose; } ;
struct TYPE_10__ {int ndbs; int /*<<< orphan*/ * dbs; } ;
struct TYPE_9__ {TYPE_2__ dbarr; } ;
typedef  TYPE_1__ ClusterInfo ;

/* Variables and functions */
 int /*<<< orphan*/  PG_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_4__ log_opts ; 
 TYPE_1__ old_cluster ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void
FUNC5(ClusterInfo *cluster)
{
	int			dbnum;

	if (cluster->dbarr.dbs != NULL)
		FUNC0(&cluster->dbarr);

	FUNC1(cluster);

	for (dbnum = 0; dbnum < cluster->dbarr.ndbs; dbnum++)
		FUNC2(cluster, &cluster->dbarr.dbs[dbnum]);

	if (cluster == &old_cluster)
		FUNC3(PG_VERBOSE, "\nsource databases:\n");
	else
		FUNC3(PG_VERBOSE, "\ntarget databases:\n");

	if (log_opts.verbose)
		FUNC4(&cluster->dbarr);
}