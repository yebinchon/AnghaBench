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
struct TYPE_7__ {int /*<<< orphan*/  oid; int /*<<< orphan*/  pubowner; int /*<<< orphan*/  pubname; scalar_t__ puballtables; } ;
struct TYPE_6__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_publication ;
typedef  scalar_t__ AclResult ;

/* Variables and functions */
 scalar_t__ ACLCHECK_NOT_OWNER ; 
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ACL_CREATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OBJECT_DATABASE ; 
 int /*<<< orphan*/  OBJECT_PUBLICATION ; 
 int /*<<< orphan*/  PublicationRelationId ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC17(Relation rel, HeapTuple tup, Oid newOwnerId)
{
	Form_pg_publication form;

	form = (Form_pg_publication) FUNC1(tup);

	if (form->pubowner == newOwnerId)
		return;

	if (!FUNC15())
	{
		AclResult	aclresult;

		/* Must be owner */
		if (!FUNC14(form->oid, FUNC2()))
			FUNC5(ACLCHECK_NOT_OWNER, OBJECT_PUBLICATION,
						   FUNC4(form->pubname));

		/* Must be able to become new owner */
		FUNC7(FUNC2(), newOwnerId);

		/* New owner must have CREATE privilege on database */
		aclresult = FUNC13(MyDatabaseId, newOwnerId, ACL_CREATE);
		if (aclresult != ACLCHECK_OK)
			FUNC5(aclresult, OBJECT_DATABASE,
						   FUNC12(MyDatabaseId));

		if (form->puballtables && !FUNC16(newOwnerId))
			FUNC8(ERROR,
					(FUNC9(ERRCODE_INSUFFICIENT_PRIVILEGE),
					 FUNC11("permission denied to change owner of publication \"%s\"",
							FUNC4(form->pubname)),
					 FUNC10("The owner of a FOR ALL TABLES publication must be a superuser.")));
	}

	form->pubowner = newOwnerId;
	FUNC0(rel, &tup->t_self, tup);

	/* Update owner dependency reference */
	FUNC6(PublicationRelationId,
							form->oid,
							newOwnerId);

	FUNC3(PublicationRelationId,
							  form->oid, 0);
}