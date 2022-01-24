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
struct TYPE_5__ {TYPE_1__* opts; } ;
typedef  TYPE_2__ TableSpaceCacheEntry ;
struct TYPE_4__ {double random_page_cost; double seq_page_cost; } ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 double random_page_cost ; 
 double seq_page_cost ; 

void
FUNC2(Oid spcid,
						  double *spc_random_page_cost,
						  double *spc_seq_page_cost)
{
	TableSpaceCacheEntry *spc = FUNC1(spcid);

	FUNC0(spc != NULL);

	if (spc_random_page_cost)
	{
		if (!spc->opts || spc->opts->random_page_cost < 0)
			*spc_random_page_cost = random_page_cost;
		else
			*spc_random_page_cost = spc->opts->random_page_cost;
	}

	if (spc_seq_page_cost)
	{
		if (!spc->opts || spc->opts->seq_page_cost < 0)
			*spc_seq_page_cost = seq_page_cost;
		else
			*spc_seq_page_cost = spc->opts->seq_page_cost;
	}
}