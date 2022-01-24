#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {TYPE_1__* constr; } ;
struct TYPE_19__ {scalar_t__ adnum; int /*<<< orphan*/ * adbin; } ;
struct TYPE_18__ {scalar_t__ adnum; } ;
struct TYPE_17__ {int /*<<< orphan*/  attname; } ;
struct TYPE_16__ {TYPE_9__* rd_att; } ;
struct TYPE_15__ {int num_defval; TYPE_5__* defval; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__* Form_pg_attribute ;
typedef  TYPE_4__* Form_pg_attrdef ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_5__ AttrDefault ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_attrdef_adbin ; 
 int /*<<< orphan*/  Anum_pg_attrdef_adrelid ; 
 int /*<<< orphan*/  AttrDefaultIndexId ; 
 int /*<<< orphan*/  AttrDefaultRelationId ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  CacheMemoryContext ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC9 (TYPE_9__*,scalar_t__) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_9__*,int*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC18(Relation relation)
{
	AttrDefault *attrdef = relation->rd_att->constr->defval;
	int			ndef = relation->rd_att->constr->num_defval;
	Relation	adrel;
	SysScanDesc adscan;
	ScanKeyData skey;
	HeapTuple	htup;
	Datum		val;
	bool		isnull;
	int			found;
	int			i;

	FUNC7(&skey,
				Anum_pg_attrdef_adrelid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC4(FUNC6(relation)));

	adrel = FUNC17(AttrDefaultRelationId, AccessShareLock);
	adscan = FUNC13(adrel, AttrDefaultIndexId, true,
								NULL, 1, &skey);
	found = 0;

	while (FUNC1(htup = FUNC15(adscan)))
	{
		Form_pg_attrdef adform = (Form_pg_attrdef) FUNC0(htup);
		Form_pg_attribute attr = FUNC9(relation->rd_att, adform->adnum - 1);

		for (i = 0; i < ndef; i++)
		{
			if (adform->adnum != attrdef[i].adnum)
				continue;
			if (attrdef[i].adbin != NULL)
				FUNC10(WARNING, "multiple attrdef records found for attr %s of rel %s",
					 FUNC3(attr->attname),
					 FUNC5(relation));
			else
				found++;

			val = FUNC11(htup,
							  Anum_pg_attrdef_adbin,
							  adrel->rd_att, &isnull);
			if (isnull)
				FUNC10(WARNING, "null adbin for attr %s of rel %s",
					 FUNC3(attr->attname),
					 FUNC5(relation));
			else
			{
				/* detoast and convert to cstring in caller's context */
				char	   *s = FUNC8(val);

				attrdef[i].adbin = FUNC2(CacheMemoryContext, s);
				FUNC12(s);
			}
			break;
		}

		if (i >= ndef)
			FUNC10(WARNING, "unexpected attrdef record found for attr %d of rel %s",
				 adform->adnum, FUNC5(relation));
	}

	FUNC14(adscan);
	FUNC16(adrel, AccessShareLock);
}