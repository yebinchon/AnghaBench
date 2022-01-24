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
struct TYPE_7__ {TYPE_1__* rd_rel; } ;
struct TYPE_6__ {scalar_t__ relkind; scalar_t__ relisshared; } ;
typedef  TYPE_2__* Relation ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ RELKIND_PARTITIONED_TABLE ; 
 int FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static bool
FUNC3(Relation rel)
{
	/*
	 * No need to create a TOAST table for partitioned tables.
	 */
	if (rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE)
		return false;

	/*
	 * We cannot allow toasting a shared relation after initdb (because
	 * there's no way to mark it toasted in other databases' pg_class).
	 */
	if (rel->rd_rel->relisshared && !FUNC0())
		return false;

	/*
	 * Ignore attempts to create toast tables on catalog tables after initdb.
	 * Which catalogs get toast tables is explicitly chosen in
	 * catalog/toasting.h.  (We could get here via some ALTER TABLE command if
	 * the catalog doesn't have a toast table.)
	 */
	if (FUNC1(rel) && !FUNC0())
		return false;

	/* Otherwise, let the AM decide. */
	return FUNC2(rel);
}