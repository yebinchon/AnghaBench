#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {void* inhparent; void* inhrelid; } ;
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_2__ InhInfo ;
typedef  int /*<<< orphan*/  Archive ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (int) ; 

InhInfo *
FUNC10(Archive *fout, int *numInherits)
{
	PGresult   *res;
	int			ntups;
	int			i;
	PQExpBuffer query = FUNC7();
	InhInfo    *inhinfo;

	int			i_inhrelid;
	int			i_inhparent;

	/*
	 * Find all the inheritance information, excluding implicit inheritance
	 * via partitioning.
	 */
	FUNC5(query, "SELECT inhrelid, inhparent FROM pg_inherits");

	res = FUNC0(fout, query->data, PGRES_TUPLES_OK);

	ntups = FUNC4(res);

	*numInherits = ntups;

	inhinfo = (InhInfo *) FUNC9(ntups * sizeof(InhInfo));

	i_inhrelid = FUNC2(res, "inhrelid");
	i_inhparent = FUNC2(res, "inhparent");

	for (i = 0; i < ntups; i++)
	{
		inhinfo[i].inhrelid = FUNC6(FUNC3(res, i, i_inhrelid));
		inhinfo[i].inhparent = FUNC6(FUNC3(res, i, i_inhparent));
	}

	FUNC1(res);

	FUNC8(query);

	return inhinfo;
}