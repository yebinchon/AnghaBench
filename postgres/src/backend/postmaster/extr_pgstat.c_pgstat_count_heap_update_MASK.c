#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  t_tuples_hot_updated; } ;
struct TYPE_10__ {TYPE_2__ t_counts; TYPE_1__* trans; } ;
struct TYPE_9__ {TYPE_4__* pgstat_info; } ;
struct TYPE_7__ {int nest_level; int /*<<< orphan*/  tuples_updated; } ;
typedef  TYPE_3__* Relation ;
typedef  TYPE_4__ PgStat_TableStatus ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int) ; 

void
FUNC2(Relation rel, bool hot)
{
	PgStat_TableStatus *pgstat_info = rel->pgstat_info;

	if (pgstat_info != NULL)
	{
		/* We have to log the effect at the proper transactional level */
		int			nest_level = FUNC0();

		if (pgstat_info->trans == NULL ||
			pgstat_info->trans->nest_level != nest_level)
			FUNC1(pgstat_info, nest_level);

		pgstat_info->trans->tuples_updated++;

		/* t_tuples_hot_updated is nontransactional, so just advance it */
		if (hot)
			pgstat_info->t_counts.t_tuples_hot_updated++;
	}
}