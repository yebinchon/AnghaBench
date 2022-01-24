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
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
struct TYPE_7__ {int /*<<< orphan*/  objsubid; void* objoid; void* classoid; void* provider; void* label; } ;
typedef  TYPE_1__ SecLabelItem ;
typedef  TYPE_2__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  Archive ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (void*) ; 
 TYPE_2__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int
FUNC10(Archive *fout, SecLabelItem **items)
{
	PGresult   *res;
	PQExpBuffer query;
	int			i_label;
	int			i_provider;
	int			i_classoid;
	int			i_objoid;
	int			i_objsubid;
	int			ntups;
	int			i;
	SecLabelItem *labels;

	query = FUNC7();

	FUNC4(query,
						 "SELECT label, provider, classoid, objoid, objsubid "
						 "FROM pg_catalog.pg_seclabel "
						 "ORDER BY classoid, objoid, objsubid");

	res = FUNC0(fout, query->data, PGRES_TUPLES_OK);

	/* Construct lookup table containing OIDs in numeric form */
	i_label = FUNC1(res, "label");
	i_provider = FUNC1(res, "provider");
	i_classoid = FUNC1(res, "classoid");
	i_objoid = FUNC1(res, "objoid");
	i_objsubid = FUNC1(res, "objsubid");

	ntups = FUNC3(res);

	labels = (SecLabelItem *) FUNC9(ntups * sizeof(SecLabelItem));

	for (i = 0; i < ntups; i++)
	{
		labels[i].label = FUNC2(res, i, i_label);
		labels[i].provider = FUNC2(res, i, i_provider);
		labels[i].classoid = FUNC6(FUNC2(res, i, i_classoid));
		labels[i].objoid = FUNC6(FUNC2(res, i, i_objoid));
		labels[i].objsubid = FUNC5(FUNC2(res, i, i_objsubid));
	}

	/* Do NOT free the PGresult since we are keeping pointers into it */
	FUNC8(query);

	*items = labels;
	return ntups;
}