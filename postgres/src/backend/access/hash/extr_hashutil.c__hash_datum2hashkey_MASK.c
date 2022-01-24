#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_4__ {int /*<<< orphan*/ * rd_indcollation; } ;
typedef  TYPE_1__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  FmgrInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HASHSTANDARD_PROC ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 

uint32
FUNC3(Relation rel, Datum key)
{
	FmgrInfo   *procinfo;
	Oid			collation;

	/* XXX assumes index has only one attribute */
	procinfo = FUNC2(rel, 1, HASHSTANDARD_PROC);
	collation = rel->rd_indcollation[0];

	return FUNC0(FUNC1(procinfo, collation, key));
}