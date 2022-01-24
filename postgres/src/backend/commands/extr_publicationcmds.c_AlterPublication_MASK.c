#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ options; int /*<<< orphan*/  pubname; } ;
struct TYPE_6__ {int /*<<< orphan*/  oid; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_publication ;
typedef  TYPE_2__ AlterPublicationStmt ;

/* Variables and functions */
 int /*<<< orphan*/  ACLCHECK_NOT_OWNER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OBJECT_PUBLICATION ; 
 int /*<<< orphan*/  PUBLICATIONNAME ; 
 int /*<<< orphan*/  PublicationRelationId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC15(AlterPublicationStmt *stmt)
{
	Relation	rel;
	HeapTuple	tup;
	Form_pg_publication pubform;

	rel = FUNC14(PublicationRelationId, RowExclusiveLock);

	tup = FUNC6(PUBLICATIONNAME,
							  FUNC2(stmt->pubname));

	if (!FUNC5(tup))
		FUNC8(ERROR,
				(FUNC9(ERRCODE_UNDEFINED_OBJECT),
				 FUNC10("publication \"%s\" does not exist",
						stmt->pubname)));

	pubform = (Form_pg_publication) FUNC3(tup);

	/* must be owner */
	if (!FUNC12(pubform->oid, FUNC4()))
		FUNC7(ACLCHECK_NOT_OWNER, OBJECT_PUBLICATION,
					   stmt->pubname);

	if (stmt->options)
		FUNC0(stmt, rel, tup);
	else
		FUNC1(stmt, rel, tup);

	/* Cleanup. */
	FUNC11(tup);
	FUNC13(rel, RowExclusiveLock);
}