#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_index_indexrelid ; 
 int /*<<< orphan*/  Anum_pg_index_indrelid ; 
 int /*<<< orphan*/  IndexRelationId ; 
 int /*<<< orphan*/  IndexRelidIndexId ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(Oid indexOid)
{
	Relation	catalog = FUNC2(IndexRelationId, AccessShareLock);

	/* check db_table:{setattr} permission of the table being indexed */
	FUNC0(catalog,
								   IndexRelidIndexId,
								   indexOid,
								   Anum_pg_index_indrelid,
								   Anum_pg_index_indexrelid);
	FUNC1(catalog, AccessShareLock);
}