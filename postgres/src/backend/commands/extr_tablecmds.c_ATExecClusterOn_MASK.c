#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* rd_rel; } ;
struct TYPE_7__ {int /*<<< orphan*/  relnamespace; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  LOCKMODE ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ObjectAddress
FUNC9(Relation rel, const char *indexName, LOCKMODE lockmode)
{
	Oid			indexOid;
	ObjectAddress address;

	indexOid = FUNC7(indexName, rel->rd_rel->relnamespace);

	if (!FUNC1(indexOid))
		FUNC4(ERROR,
				(FUNC5(ERRCODE_UNDEFINED_OBJECT),
				 FUNC6("index \"%s\" for table \"%s\" does not exist",
						indexName, FUNC2(rel))));

	/* Check index is valid to cluster on */
	FUNC3(rel, indexOid, false, lockmode);

	/* And do the work */
	FUNC8(rel, indexOid, false);

	FUNC0(address,
					 RelationRelationId, indexOid);

	return address;
}