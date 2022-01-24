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
struct TYPE_7__ {int /*<<< orphan*/  objectId; } ;
struct TYPE_6__ {int /*<<< orphan*/  oid; } ;
typedef  scalar_t__ Relation ;
typedef  TYPE_1__ Publication ;
typedef  TYPE_2__ ObjectAddress ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_publication_rel_oid ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 TYPE_1__* FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PUBLICATIONRELMAP ; 
 int /*<<< orphan*/  PublicationRelRelationId ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ObjectAddress
FUNC16(List *object,
								   Relation *relp, bool missing_ok)
{
	ObjectAddress address;
	Relation	relation;
	List	   *relname;
	char	   *pubname;
	Publication *pub;

	FUNC2(address, PublicationRelRelationId, InvalidOid);

	relname = FUNC10(object);
	relation = FUNC14(FUNC12(relname),
										AccessShareLock, missing_ok);
	if (!relation)
		return address;

	/* fetch publication name from input list */
	pubname = FUNC15(FUNC11(object));

	/* Now look up the pg_publication tuple */
	pub = FUNC0(pubname, missing_ok);
	if (!pub)
	{
		FUNC13(relation, AccessShareLock);
		return address;
	}

	/* Find the publication relation mapping in syscache. */
	address.objectId =
		FUNC1(PUBLICATIONRELMAP, Anum_pg_publication_rel_oid,
						FUNC3(FUNC6(relation)),
						FUNC3(pub->oid));
	if (!FUNC4(address.objectId))
	{
		if (!missing_ok)
			FUNC7(ERROR,
					(FUNC8(ERRCODE_UNDEFINED_OBJECT),
					 FUNC9("publication relation \"%s\" in publication \"%s\" does not exist",
							FUNC5(relation), pubname)));
		FUNC13(relation, AccessShareLock);
		return address;
	}

	*relp = relation;
	return address;
}