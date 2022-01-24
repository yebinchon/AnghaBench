#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_12__ {int /*<<< orphan*/  attname; } ;
struct TYPE_11__ {int /*<<< orphan*/  rd_att; } ;
struct TYPE_10__ {char* data; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  TYPE_2__* Relation ;
typedef  TYPE_3__* Form_pg_attribute ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 char* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*) ; 

__attribute__((used)) static char *
FUNC8(Relation rel, int *pkattnums, int pknumatts, char **tgt_pkattvals)
{
	char	   *relname;
	TupleDesc	tupdesc;
	StringInfoData buf;
	int			i;

	FUNC5(&buf);

	/* get relation name including any needed schema prefix and quoting */
	relname = FUNC4(rel);

	tupdesc = rel->rd_att;

	FUNC2(&buf, "DELETE FROM %s WHERE ", relname);
	for (i = 0; i < pknumatts; i++)
	{
		int			pkattnum = pkattnums[i];
		Form_pg_attribute attr = FUNC1(tupdesc, pkattnum);

		if (i > 0)
			FUNC3(&buf, " AND ");

		FUNC3(&buf,
							   FUNC6(FUNC0(attr->attname)));

		if (tgt_pkattvals[i] != NULL)
			FUNC2(&buf, " = %s",
							 FUNC7(tgt_pkattvals[i]));
		else
			FUNC3(&buf, " IS NULL");
	}

	return buf.data;
}