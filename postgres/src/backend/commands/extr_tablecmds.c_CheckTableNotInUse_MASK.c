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
struct TYPE_7__ {int rd_refcnt; TYPE_1__* rd_rel; scalar_t__ rd_isnailed; } ;
struct TYPE_6__ {scalar_t__ relkind; } ;
typedef  TYPE_2__* Relation ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_IN_USE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ RELKIND_INDEX ; 
 scalar_t__ RELKIND_PARTITIONED_INDEX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int /*<<< orphan*/ ) ; 

void
FUNC6(Relation rel, const char *stmt)
{
	int			expected_refcnt;

	expected_refcnt = rel->rd_isnailed ? 2 : 1;
	if (rel->rd_refcnt != expected_refcnt)
		FUNC3(ERROR,
				(FUNC4(ERRCODE_OBJECT_IN_USE),
		/* translator: first %s is a SQL command, eg ALTER TABLE */
				 FUNC5("cannot %s \"%s\" because it is being used by active queries in this session",
						stmt, FUNC1(rel))));

	if (rel->rd_rel->relkind != RELKIND_INDEX &&
		rel->rd_rel->relkind != RELKIND_PARTITIONED_INDEX &&
		FUNC0(FUNC2(rel)))
		FUNC3(ERROR,
				(FUNC4(ERRCODE_OBJECT_IN_USE),
		/* translator: first %s is a SQL command, eg ALTER TABLE */
				 FUNC5("cannot %s \"%s\" because it has pending trigger events",
						stmt, FUNC1(rel))));
}