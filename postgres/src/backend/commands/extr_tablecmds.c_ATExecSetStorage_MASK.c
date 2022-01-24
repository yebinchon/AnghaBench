#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ attnum; char attstorage; int /*<<< orphan*/  atttypid; } ;
struct TYPE_8__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_attribute ;
typedef  scalar_t__ AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AttributeRelationId ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_COLUMN ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  String ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,...) ; 
 char const* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 scalar_t__ FUNC16 (char*,char*) ; 
 char* FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ObjectAddress
FUNC20(Relation rel, const char *colName, Node *newValue, LOCKMODE lockmode)
{
	char	   *storagemode;
	char		newstorage;
	Relation	attrelation;
	HeapTuple	tuple;
	Form_pg_attribute attrtuple;
	AttrNumber	attnum;
	ObjectAddress address;

	FUNC0(FUNC5(newValue, String));
	storagemode = FUNC17(newValue);

	if (FUNC16(storagemode, "plain") == 0)
		newstorage = 'p';
	else if (FUNC16(storagemode, "external") == 0)
		newstorage = 'e';
	else if (FUNC16(storagemode, "extended") == 0)
		newstorage = 'x';
	else if (FUNC16(storagemode, "main") == 0)
		newstorage = 'm';
	else
	{
		FUNC11(ERROR,
				(FUNC12(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC13("invalid storage type \"%s\"",
						storagemode)));
		newstorage = 0;			/* keep compiler quiet */
	}

	attrelation = FUNC19(AttributeRelationId, RowExclusiveLock);

	tuple = FUNC9(FUNC8(rel), colName);

	if (!FUNC3(tuple))
		FUNC11(ERROR,
				(FUNC12(ERRCODE_UNDEFINED_COLUMN),
				 FUNC13("column \"%s\" of relation \"%s\" does not exist",
						colName, FUNC7(rel))));
	attrtuple = (Form_pg_attribute) FUNC2(tuple);

	attnum = attrtuple->attnum;
	if (attnum <= 0)
		FUNC11(ERROR,
				(FUNC12(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC13("cannot alter system column \"%s\"",
						colName)));

	/*
	 * safety check: do not allow toasted storage modes unless column datatype
	 * is TOAST-aware.
	 */
	if (newstorage == 'p' || FUNC10(attrtuple->atttypid))
		attrtuple->attstorage = newstorage;
	else
		FUNC11(ERROR,
				(FUNC12(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC13("column data type %s can only have storage PLAIN",
						FUNC14(attrtuple->atttypid))));

	FUNC1(attrelation, &tuple->t_self, tuple);

	FUNC4(RelationRelationId,
							  FUNC8(rel),
							  attrtuple->attnum);

	FUNC15(tuple);

	FUNC18(attrelation, RowExclusiveLock);

	FUNC6(address, RelationRelationId,
						FUNC8(rel), attnum);
	return address;
}