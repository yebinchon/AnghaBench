#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_5__ {scalar_t__ attgenerated; scalar_t__ attidentity; } ;
struct TYPE_4__ {int missingMode; char generated; int /*<<< orphan*/ * raw_default; scalar_t__ attnum; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__ RawColumnDefault ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  scalar_t__ AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DROP_RESTRICT ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_COLUMN ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidAttrNumber ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,...) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static ObjectAddress
FUNC14(Relation rel, const char *colName,
					Node *newDefault, LOCKMODE lockmode)
{
	TupleDesc	tupdesc = FUNC2(rel);
	AttrNumber	attnum;
	ObjectAddress address;

	/*
	 * get the number of the attribute
	 */
	attnum = FUNC11(FUNC4(rel), colName);
	if (attnum == InvalidAttrNumber)
		FUNC7(ERROR,
				(FUNC8(ERRCODE_UNDEFINED_COLUMN),
				 FUNC10("column \"%s\" of relation \"%s\" does not exist",
						colName, FUNC3(rel))));

	/* Prevent them from altering a system attribute */
	if (attnum <= 0)
		FUNC7(ERROR,
				(FUNC8(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC10("cannot alter system column \"%s\"",
						colName)));

	if (FUNC6(tupdesc, attnum - 1)->attidentity)
		FUNC7(ERROR,
				(FUNC8(ERRCODE_SYNTAX_ERROR),
				 FUNC10("column \"%s\" of relation \"%s\" is an identity column",
						colName, FUNC3(rel)),
				 newDefault ? 0 : FUNC9("Use ALTER TABLE ... ALTER COLUMN ... DROP IDENTITY instead.")));

	if (FUNC6(tupdesc, attnum - 1)->attgenerated)
		FUNC7(ERROR,
				(FUNC8(ERRCODE_SYNTAX_ERROR),
				 FUNC10("column \"%s\" of relation \"%s\" is a generated column",
						colName, FUNC3(rel))));

	/*
	 * Remove any old default for the column.  We use RESTRICT here for
	 * safety, but at present we do not expect anything to depend on the
	 * default.
	 *
	 * We treat removing the existing default as an internal operation when it
	 * is preparatory to adding a new default, but as a user-initiated
	 * operation when the user asked for a drop.
	 */
	FUNC5(FUNC4(rel), attnum, DROP_RESTRICT, false,
					  newDefault == NULL ? false : true);

	if (newDefault)
	{
		/* SET DEFAULT */
		RawColumnDefault *rawEnt;

		rawEnt = (RawColumnDefault *) FUNC13(sizeof(RawColumnDefault));
		rawEnt->attnum = attnum;
		rawEnt->raw_default = newDefault;
		rawEnt->missingMode = false;
		rawEnt->generated = '\0';

		/*
		 * This function is intended for CREATE TABLE, so it processes a
		 * _list_ of defaults, but we just do one.
		 */
		FUNC0(rel, FUNC12(rawEnt), NIL,
								  false, true, false, NULL);
	}

	FUNC1(address, RelationRelationId,
						FUNC4(rel), attnum);
	return address;
}