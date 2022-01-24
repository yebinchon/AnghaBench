#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int int16 ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_9__ {int /*<<< orphan*/ * values; } ;
struct TYPE_11__ {int indnkeyatts; TYPE_1__ indkey; scalar_t__ indisprimary; } ;
struct TYPE_10__ {int /*<<< orphan*/  rd_att; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__* Form_pg_index ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_index_indrelid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IndexIndrelidIndexId ; 
 int /*<<< orphan*/  IndexRelationId ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char **
FUNC12(Relation rel, int16 *indnkeyatts)
{
	Relation	indexRelation;
	ScanKeyData skey;
	SysScanDesc scan;
	HeapTuple	indexTuple;
	int			i;
	char	  **result = NULL;
	TupleDesc	tupdesc;

	/* initialize indnkeyatts to 0 in case no primary key exists */
	*indnkeyatts = 0;

	tupdesc = rel->rd_att;

	/* Prepare to scan pg_index for entries having indrelid = this rel. */
	indexRelation = FUNC11(IndexRelationId, AccessShareLock);
	FUNC5(&skey,
				Anum_pg_index_indrelid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC2(FUNC3(rel)));

	scan = FUNC7(indexRelation, IndexIndrelidIndexId, true,
							  NULL, 1, &skey);

	while (FUNC1(indexTuple = FUNC9(scan)))
	{
		Form_pg_index index = (Form_pg_index) FUNC0(indexTuple);

		/* we're only interested if it is the primary key */
		if (index->indisprimary)
		{
			*indnkeyatts = index->indnkeyatts;
			if (*indnkeyatts > 0)
			{
				result = (char **) FUNC6(*indnkeyatts * sizeof(char *));

				for (i = 0; i < *indnkeyatts; i++)
					result[i] = FUNC4(tupdesc, index->indkey.values[i]);
			}
			break;
		}
	}

	FUNC8(scan);
	FUNC10(indexRelation, AccessShareLock);

	return result;
}