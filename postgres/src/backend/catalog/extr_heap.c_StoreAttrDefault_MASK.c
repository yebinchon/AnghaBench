#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  valuesAtt ;
typedef  int /*<<< orphan*/  replacesAtt ;
typedef  int /*<<< orphan*/  nullsAtt ;
struct TYPE_29__ {char attgenerated; int /*<<< orphan*/  attalign; int /*<<< orphan*/  attbyval; int /*<<< orphan*/  attlen; int /*<<< orphan*/  atttypid; int /*<<< orphan*/  atthasdef; } ;
struct TYPE_28__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_27__ {void* objectSubId; void* objectId; int /*<<< orphan*/  classId; } ;
struct TYPE_26__ {int /*<<< orphan*/  rd_att; } ;
typedef  TYPE_1__* Relation ;
typedef  void* Oid ;
typedef  TYPE_2__ ObjectAddress ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_3__* HeapTuple ;
typedef  TYPE_4__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  ExprState ;
typedef  int /*<<< orphan*/  ExprContext ;
typedef  int /*<<< orphan*/  Expr ;
typedef  int /*<<< orphan*/  EState ;
typedef  int Datum ;
typedef  void* AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  ATTNUM ; 
 int Anum_pg_attrdef_adbin ; 
 int Anum_pg_attrdef_adnum ; 
 int Anum_pg_attrdef_adrelid ; 
 int Anum_pg_attrdef_oid ; 
 int Anum_pg_attribute_atthasdef ; 
 int Anum_pg_attribute_atthasmissing ; 
 int Anum_pg_attribute_attmissingval ; 
 int /*<<< orphan*/  AttrDefaultOidIndexId ; 
 int /*<<< orphan*/  AttrDefaultRelationId ; 
 int /*<<< orphan*/  AttributeRelationId ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  DEPENDENCY_AUTO ; 
 int /*<<< orphan*/  DEPENDENCY_NORMAL ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 
 void* FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,void*,void*,int) ; 
 int /*<<< orphan*/  FUNC14 (int*,int,int) ; 
 int Natts_pg_attribute ; 
 int FUNC15 (void*) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 void* FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_3__* FUNC19 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC20 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC21 (int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*,void*,void*) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC24 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__*) ; 
 TYPE_3__* FUNC26 (TYPE_3__*,int /*<<< orphan*/ ,int*,int*,int*) ; 
 char* FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (char*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_2__*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Oid
FUNC33(Relation rel, AttrNumber attnum,
				 Node *expr, bool is_internal, bool add_column_mode)
{
	char	   *adbin;
	Relation	adrel;
	HeapTuple	tuple;
	Datum		values[4];
	static bool nulls[4] = {false, false, false, false};
	Relation	attrrel;
	HeapTuple	atttup;
	Form_pg_attribute attStruct;
	char		attgenerated;
	Oid			attrdefOid;
	ObjectAddress colobject,
				defobject;

	adrel = FUNC32(AttrDefaultRelationId, RowExclusiveLock);

	/*
	 * Flatten expression to string form for storage.
	 */
	adbin = FUNC27(expr);

	/*
	 * Make the pg_attrdef entry.
	 */
	attrdefOid = FUNC9(adrel, AttrDefaultOidIndexId,
									Anum_pg_attrdef_oid);
	values[Anum_pg_attrdef_oid - 1] = FUNC15(attrdefOid);
	values[Anum_pg_attrdef_adrelid - 1] = FUNC18(rel);
	values[Anum_pg_attrdef_adnum - 1] = attnum;
	values[Anum_pg_attrdef_adbin - 1] = FUNC0(adbin);

	tuple = FUNC24(adrel->rd_att, values, nulls);
	FUNC1(adrel, tuple);

	defobject.classId = AttrDefaultRelationId;
	defobject.objectId = attrdefOid;
	defobject.objectSubId = 0;

	FUNC31(adrel, RowExclusiveLock);

	/* now can free some of the stuff allocated above */
	FUNC28(FUNC4(values[Anum_pg_attrdef_adbin - 1]));
	FUNC25(tuple);
	FUNC28(adbin);

	/*
	 * Update the pg_attribute entry for the column to show that a default
	 * exists.
	 */
	attrrel = FUNC32(AttributeRelationId, RowExclusiveLock);
	atttup = FUNC19(ATTNUM,
								 FUNC15(FUNC18(rel)),
								 FUNC12(attnum));
	if (!FUNC11(atttup))
		FUNC22(ERROR, "cache lookup failed for attribute %d of relation %u",
			 attnum, FUNC18(rel));
	attStruct = (Form_pg_attribute) FUNC8(atttup);
	attgenerated = attStruct->attgenerated;
	if (!attStruct->atthasdef)
	{
		Form_pg_attribute defAttStruct;

		ExprState  *exprState;
		Expr	   *expr2 = (Expr *) expr;
		EState	   *estate = NULL;
		ExprContext *econtext;
		Datum		valuesAtt[Natts_pg_attribute];
		bool		nullsAtt[Natts_pg_attribute];
		bool		replacesAtt[Natts_pg_attribute];
		Datum		missingval = (Datum) 0;
		bool		missingIsNull = true;

		FUNC14(valuesAtt, 0, sizeof(valuesAtt));
		FUNC14(nullsAtt, false, sizeof(nullsAtt));
		FUNC14(replacesAtt, false, sizeof(replacesAtt));
		valuesAtt[Anum_pg_attribute_atthasdef - 1] = true;
		replacesAtt[Anum_pg_attribute_atthasdef - 1] = true;

		if (add_column_mode && !attgenerated)
		{
			expr2 = FUNC23(expr2);
			estate = FUNC3();
			exprState = FUNC6(expr2, estate);
			econtext = FUNC10(estate);

			missingval = FUNC5(exprState, econtext,
									  &missingIsNull);

			FUNC7(estate);

			defAttStruct = FUNC20(rel->rd_att, attnum - 1);

			if (missingIsNull)
			{
				/* if the default evaluates to NULL, just store a NULL array */
				missingval = (Datum) 0;
			}
			else
			{
				/* otherwise make a one-element array of the value */
				missingval = FUNC16(
											 FUNC21(&missingval,
															 1,
															 defAttStruct->atttypid,
															 defAttStruct->attlen,
															 defAttStruct->attbyval,
															 defAttStruct->attalign));
			}

			valuesAtt[Anum_pg_attribute_atthasmissing - 1] = !missingIsNull;
			replacesAtt[Anum_pg_attribute_atthasmissing - 1] = true;
			valuesAtt[Anum_pg_attribute_attmissingval - 1] = missingval;
			replacesAtt[Anum_pg_attribute_attmissingval - 1] = true;
			nullsAtt[Anum_pg_attribute_attmissingval - 1] = missingIsNull;
		}
		atttup = FUNC26(atttup, FUNC17(attrrel),
								   valuesAtt, nullsAtt, replacesAtt);

		FUNC2(attrrel, &atttup->t_self, atttup);

		if (!missingIsNull)
			FUNC28(FUNC4(missingval));

	}
	FUNC31(attrrel, RowExclusiveLock);
	FUNC25(atttup);

	/*
	 * Make a dependency so that the pg_attrdef entry goes away if the column
	 * (or whole table) is deleted.
	 */
	colobject.classId = RelationRelationId;
	colobject.objectId = FUNC18(rel);
	colobject.objectSubId = attnum;

	FUNC29(&defobject, &colobject, DEPENDENCY_AUTO);

	/*
	 * Record dependencies on objects used in the expression, too.
	 */
	if (attgenerated)
	{
		/*
		 * Generated column: Dropping anything that the generation expression
		 * refers to automatically drops the generated column.
		 */
		FUNC30(&colobject, expr, FUNC18(rel),
										DEPENDENCY_AUTO,
										DEPENDENCY_AUTO, false);
	}
	else
	{
		/*
		 * Normal default: Dropping anything that the default refers to
		 * requires CASCADE and drops the default only.
		 */
		FUNC30(&defobject, expr, FUNC18(rel),
										DEPENDENCY_NORMAL,
										DEPENDENCY_NORMAL, false);
	}

	/*
	 * Post creation hook for attribute defaults.
	 *
	 * XXX. ALTER TABLE ALTER COLUMN SET/DROP DEFAULT is implemented with a
	 * couple of deletion/creation of the attribute's default entry, so the
	 * callee should check existence of an older version of this entry if it
	 * needs to distinguish.
	 */
	FUNC13(AttrDefaultRelationId,
								  FUNC18(rel), attnum, is_internal);

	return attrdefOid;
}