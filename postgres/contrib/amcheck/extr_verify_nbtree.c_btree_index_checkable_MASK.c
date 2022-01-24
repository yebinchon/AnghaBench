#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* rd_index; TYPE_2__* rd_rel; } ;
struct TYPE_8__ {scalar_t__ relkind; scalar_t__ relam; } ;
struct TYPE_7__ {int /*<<< orphan*/  indisvalid; } ;
typedef  TYPE_3__* Relation ;

/* Variables and functions */
 scalar_t__ BTREE_AM_OID ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 scalar_t__ RELKIND_INDEX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static inline void
FUNC6(Relation rel)
{
	if (rel->rd_rel->relkind != RELKIND_INDEX ||
		rel->rd_rel->relam != BTREE_AM_OID)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC5("only B-Tree indexes are supported as targets for verification"),
				 FUNC4("Relation \"%s\" is not a B-Tree index.",
						   FUNC1(rel))));

	if (FUNC0(rel))
		FUNC2(ERROR,
				(FUNC3(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC5("cannot access temporary tables of other sessions"),
				 FUNC4("Index \"%s\" is associated with temporary relation.",
						   FUNC1(rel))));

	if (!rel->rd_index->indisvalid)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC5("cannot check index \"%s\"",
						FUNC1(rel)),
				 FUNC4("Index is not valid.")));
}