#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* trans; } ;
struct TYPE_7__ {TYPE_3__* pgstat_info; } ;
struct TYPE_6__ {int nest_level; int /*<<< orphan*/  tuples_inserted; } ;
typedef  TYPE_2__* Relation ;
typedef  TYPE_3__ PgStat_TableStatus ;
typedef  scalar_t__ PgStat_Counter ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 

void
FUNC2(Relation rel, PgStat_Counter n)
{
	PgStat_TableStatus *pgstat_info = rel->pgstat_info;

	if (pgstat_info != NULL)
	{
		/* We have to log the effect at the proper transactional level */
		int			nest_level = FUNC0();

		if (pgstat_info->trans == NULL ||
			pgstat_info->trans->nest_level != nest_level)
			FUNC1(pgstat_info, nest_level);

		pgstat_info->trans->tuples_inserted += n;
	}
}