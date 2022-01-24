#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int numatts; int /*<<< orphan*/ * attnames; int /*<<< orphan*/ * attcollation; int /*<<< orphan*/ * atttypnames; } ;
typedef  TYPE_1__ TableInfo ;
typedef  int /*<<< orphan*/  PQExpBuffer ;
typedef  int /*<<< orphan*/  CollInfo ;
typedef  int /*<<< orphan*/  Archive ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PQExpBuffer
FUNC8(Archive *fout, TableInfo *tbinfo)
{
	PQExpBuffer result = FUNC4();
	int			j;

	FUNC3(result, "SELECT");

	for (j = 0; j < tbinfo->numatts; j++)
	{
		if (j > 0)
			FUNC2(result, ',');
		FUNC3(result, "\n    ");

		FUNC1(result, "NULL::%s", tbinfo->atttypnames[j]);

		/*
		 * Must add collation if not default for the type, because CREATE OR
		 * REPLACE VIEW won't change it
		 */
		if (FUNC0(tbinfo->attcollation[j]))
		{
			CollInfo   *coll;

			coll = FUNC5(tbinfo->attcollation[j]);
			if (coll)
				FUNC1(result, " COLLATE %s",
								  FUNC7(coll));
		}

		FUNC1(result, " AS %s", FUNC6(tbinfo->attnames[j]));
	}

	return result;
}