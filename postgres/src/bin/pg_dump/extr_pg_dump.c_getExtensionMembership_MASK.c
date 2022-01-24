#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {void* oid; void* tableoid; } ;
struct TYPE_13__ {scalar_t__ oid; } ;
struct TYPE_14__ {TYPE_1__ catId; } ;
struct TYPE_17__ {TYPE_2__ dobj; } ;
struct TYPE_16__ {TYPE_5__* ext; TYPE_6__ catId; } ;
struct TYPE_15__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_3__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  scalar_t__ Oid ;
typedef  TYPE_4__ ExtensionMemberId ;
typedef  TYPE_5__ ExtensionInfo ;
typedef  TYPE_6__ CatalogId ;
typedef  int /*<<< orphan*/  Archive ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 TYPE_5__* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int) ; 

void
FUNC13(Archive *fout, ExtensionInfo extinfo[],
					   int numExtensions)
{
	PQExpBuffer query;
	PGresult   *res;
	int			ntups,
				nextmembers,
				i;
	int			i_classid,
				i_objid,
				i_refobjid;
	ExtensionMemberId *extmembers;
	ExtensionInfo *ext;

	/* Nothing to do if no extensions */
	if (numExtensions == 0)
		return;

	query = FUNC7();

	/* refclassid constraint is redundant but may speed the search */
	FUNC5(query, "SELECT "
						 "classid, objid, refobjid "
						 "FROM pg_depend "
						 "WHERE refclassid = 'pg_extension'::regclass "
						 "AND deptype = 'e' "
						 "ORDER BY 3");

	res = FUNC0(fout, query->data, PGRES_TUPLES_OK);

	ntups = FUNC4(res);

	i_classid = FUNC2(res, "classid");
	i_objid = FUNC2(res, "objid");
	i_refobjid = FUNC2(res, "refobjid");

	extmembers = (ExtensionMemberId *) FUNC11(ntups * sizeof(ExtensionMemberId));
	nextmembers = 0;

	/*
	 * Accumulate data into extmembers[].
	 *
	 * Since we ordered the SELECT by referenced ID, we can expect that
	 * multiple entries for the same extension will appear together; this
	 * saves on searches.
	 */
	ext = NULL;

	for (i = 0; i < ntups; i++)
	{
		CatalogId	objId;
		Oid			extId;

		objId.tableoid = FUNC6(FUNC3(res, i, i_classid));
		objId.oid = FUNC6(FUNC3(res, i, i_objid));
		extId = FUNC6(FUNC3(res, i, i_refobjid));

		if (ext == NULL ||
			ext->dobj.catId.oid != extId)
			ext = FUNC9(extId);

		if (ext == NULL)
		{
			/* shouldn't happen */
			FUNC10("could not find referenced extension %u", extId);
			continue;
		}

		extmembers[nextmembers].catId = objId;
		extmembers[nextmembers].ext = ext;
		nextmembers++;
	}

	FUNC1(res);

	/* Remember the data for use later */
	FUNC12(extmembers, nextmembers);

	FUNC8(query);
}