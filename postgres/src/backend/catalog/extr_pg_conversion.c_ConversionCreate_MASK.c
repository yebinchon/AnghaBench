#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_12__ {scalar_t__ objectSubId; void* objectId; int /*<<< orphan*/  classId; } ;
struct TYPE_11__ {int /*<<< orphan*/  rd_att; } ;
typedef  TYPE_1__* Relation ;
typedef  void* Oid ;
typedef  TYPE_2__ ObjectAddress ;
typedef  int /*<<< orphan*/  NameData ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  scalar_t__ Datum ;

/* Variables and functions */
 int Anum_pg_conversion_condefault ; 
 int Anum_pg_conversion_conforencoding ; 
 int Anum_pg_conversion_conname ; 
 int Anum_pg_conversion_connamespace ; 
 int Anum_pg_conversion_conowner ; 
 int Anum_pg_conversion_conproc ; 
 int Anum_pg_conversion_contoencoding ; 
 int Anum_pg_conversion_oid ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  CONNAMENSP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ConversionOidIndexId ; 
 int /*<<< orphan*/  ConversionRelationId ; 
 int /*<<< orphan*/  DEPENDENCY_NORMAL ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NamespaceRelationId ; 
 int Natts_pg_conversion ; 
 scalar_t__ FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/  ProcedureRelationId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ObjectAddress
FUNC23(const char *conname, Oid connamespace,
				 Oid conowner,
				 int32 conforencoding, int32 contoencoding,
				 Oid conproc, bool def)
{
	int			i;
	Relation	rel;
	TupleDesc	tupDesc;
	HeapTuple	tup;
	Oid			oid;
	bool		nulls[Natts_pg_conversion];
	Datum		values[Natts_pg_conversion];
	NameData	cname;
	ObjectAddress myself,
				referenced;

	/* sanity checks */
	if (!conname)
		FUNC10(ERROR, "no conversion name supplied");

	/* make sure there is no existing conversion of same name */
	if (FUNC9(CONNAMENSP,
							  FUNC8(conname),
							  FUNC7(connamespace)))
		FUNC11(ERROR,
				(FUNC12(ERRCODE_DUPLICATE_OBJECT),
				 FUNC13("conversion \"%s\" already exists", conname)));

	if (def)
	{
		/*
		 * make sure there is no existing default <for encoding><to encoding>
		 * pair in this name space
		 */
		if (FUNC2(connamespace,
								  conforencoding,
								  contoencoding))
			FUNC11(ERROR,
					(FUNC12(ERRCODE_DUPLICATE_OBJECT),
					 FUNC13("default conversion for %s to %s already exists",
							FUNC17(conforencoding),
							FUNC17(contoencoding))));
	}

	/* open pg_conversion */
	rel = FUNC22(ConversionRelationId, RowExclusiveLock);
	tupDesc = rel->rd_att;

	/* initialize nulls and values */
	for (i = 0; i < Natts_pg_conversion; i++)
	{
		nulls[i] = false;
		values[i] = (Datum) NULL;
	}

	/* form a tuple */
	FUNC16(&cname, conname);
	oid = FUNC3(rel, ConversionOidIndexId,
							 Anum_pg_conversion_oid);
	values[Anum_pg_conversion_oid - 1] = FUNC7(oid);
	values[Anum_pg_conversion_conname - 1] = FUNC6(&cname);
	values[Anum_pg_conversion_connamespace - 1] = FUNC7(connamespace);
	values[Anum_pg_conversion_conowner - 1] = FUNC7(conowner);
	values[Anum_pg_conversion_conforencoding - 1] = FUNC4(conforencoding);
	values[Anum_pg_conversion_contoencoding - 1] = FUNC4(contoencoding);
	values[Anum_pg_conversion_conproc - 1] = FUNC7(conproc);
	values[Anum_pg_conversion_condefault - 1] = FUNC0(def);

	tup = FUNC14(tupDesc, values, nulls);

	/* insert a new tuple */
	FUNC1(rel, tup);

	myself.classId = ConversionRelationId;
	myself.objectId = oid;
	myself.objectSubId = 0;

	/* create dependency on conversion procedure */
	referenced.classId = ProcedureRelationId;
	referenced.objectId = conproc;
	referenced.objectSubId = 0;
	FUNC18(&myself, &referenced, DEPENDENCY_NORMAL);

	/* create dependency on namespace */
	referenced.classId = NamespaceRelationId;
	referenced.objectId = connamespace;
	referenced.objectSubId = 0;
	FUNC18(&myself, &referenced, DEPENDENCY_NORMAL);

	/* create dependency on owner */
	FUNC20(ConversionRelationId, oid, conowner);

	/* dependency on extension */
	FUNC19(&myself, false);

	/* Post creation hook for new conversion */
	FUNC5(ConversionRelationId, oid, 0);

	FUNC15(tup);
	FUNC21(rel, RowExclusiveLock);

	return myself;
}