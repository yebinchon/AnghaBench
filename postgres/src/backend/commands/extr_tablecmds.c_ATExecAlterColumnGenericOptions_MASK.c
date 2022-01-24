#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_6__ ;
typedef  struct TYPE_30__   TYPE_5__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  repl_val ;
typedef  int /*<<< orphan*/  repl_repl ;
typedef  int /*<<< orphan*/  repl_null ;
struct TYPE_31__ {int /*<<< orphan*/  fdwvalidator; } ;
struct TYPE_30__ {int /*<<< orphan*/  fdwid; } ;
struct TYPE_29__ {scalar_t__ attnum; } ;
struct TYPE_28__ {int /*<<< orphan*/  ftserver; } ;
struct TYPE_27__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_26__ {int /*<<< orphan*/  rd_id; } ;
typedef  TYPE_1__* Relation ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  TYPE_2__* HeapTuple ;
typedef  TYPE_3__* Form_pg_foreign_table ;
typedef  TYPE_4__* Form_pg_attribute ;
typedef  TYPE_5__ ForeignServer ;
typedef  TYPE_6__ ForeignDataWrapper ;
typedef  int Datum ;
typedef  scalar_t__ AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  ATTNAME ; 
 int /*<<< orphan*/  AccessShareLock ; 
 int Anum_pg_attribute_attfdwoptions ; 
 int /*<<< orphan*/  AttributeRelationId ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_COLUMN ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FOREIGNTABLEREL ; 
 int /*<<< orphan*/  ForeignTableRelationId ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 TYPE_6__* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  InvalidObjectAddress ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * NIL ; 
 int Natts_pg_attribute ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 char const* FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_2__* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC15 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC16 (int /*<<< orphan*/ ,TYPE_2__*,int,int*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 TYPE_2__* FUNC21 (TYPE_2__*,int /*<<< orphan*/ ,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC22 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC25 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ObjectAddress
FUNC26(Relation rel,
								const char *colName,
								List *options,
								LOCKMODE lockmode)
{
	Relation	ftrel;
	Relation	attrel;
	ForeignServer *server;
	ForeignDataWrapper *fdw;
	HeapTuple	tuple;
	HeapTuple	newtuple;
	bool		isnull;
	Datum		repl_val[Natts_pg_attribute];
	bool		repl_null[Natts_pg_attribute];
	bool		repl_repl[Natts_pg_attribute];
	Datum		datum;
	Form_pg_foreign_table fttableform;
	Form_pg_attribute atttableform;
	AttrNumber	attnum;
	ObjectAddress address;

	if (options == NIL)
		return InvalidObjectAddress;

	/* First, determine FDW validator associated to the foreign table. */
	ftrel = FUNC24(ForeignTableRelationId, AccessShareLock);
	tuple = FUNC14(FOREIGNTABLEREL, rel->rd_id);
	if (!FUNC5(tuple))
		FUNC17(ERROR,
				(FUNC18(ERRCODE_UNDEFINED_OBJECT),
				 FUNC19("foreign table \"%s\" does not exist",
						FUNC11(rel))));
	fttableform = (Form_pg_foreign_table) FUNC2(tuple);
	server = FUNC4(fttableform->ftserver);
	fdw = FUNC3(server->fdwid);

	FUNC23(ftrel, AccessShareLock);
	FUNC13(tuple);

	attrel = FUNC24(AttributeRelationId, RowExclusiveLock);
	tuple = FUNC15(FUNC12(rel), colName);
	if (!FUNC5(tuple))
		FUNC17(ERROR,
				(FUNC18(ERRCODE_UNDEFINED_COLUMN),
				 FUNC19("column \"%s\" of relation \"%s\" does not exist",
						colName, FUNC11(rel))));

	/* Prevent them from altering a system attribute */
	atttableform = (Form_pg_attribute) FUNC2(tuple);
	attnum = atttableform->attnum;
	if (attnum <= 0)
		FUNC17(ERROR,
				(FUNC18(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC19("cannot alter system column \"%s\"", colName)));


	/* Initialize buffers for new tuple values */
	FUNC22(repl_val, 0, sizeof(repl_val));
	FUNC22(repl_null, false, sizeof(repl_null));
	FUNC22(repl_repl, false, sizeof(repl_repl));

	/* Extract the current options */
	datum = FUNC16(ATTNAME,
							tuple,
							Anum_pg_attribute_attfdwoptions,
							&isnull);
	if (isnull)
		datum = FUNC8(NULL);

	/* Transform the options */
	datum = FUNC25(AttributeRelationId,
									datum,
									options,
									fdw->fdwvalidator);

	if (FUNC9(FUNC1(datum)))
		repl_val[Anum_pg_attribute_attfdwoptions - 1] = datum;
	else
		repl_null[Anum_pg_attribute_attfdwoptions - 1] = true;

	repl_repl[Anum_pg_attribute_attfdwoptions - 1] = true;

	/* Everything looks good - update the tuple */

	newtuple = FUNC21(tuple, FUNC10(attrel),
								 repl_val, repl_null, repl_repl);

	FUNC0(attrel, &newtuple->t_self, newtuple);

	FUNC6(RelationRelationId,
							  FUNC12(rel),
							  atttableform->attnum);
	FUNC7(address, RelationRelationId,
						FUNC12(rel), attnum);

	FUNC13(tuple);

	FUNC23(attrel, RowExclusiveLock);

	FUNC20(newtuple);

	return address;
}