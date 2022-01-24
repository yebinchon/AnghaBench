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
struct TYPE_4__ {int /*<<< orphan*/ * rd_indcollation; int /*<<< orphan*/ * rd_opfamily; } ;
typedef  TYPE_1__* Relation ;
typedef  int /*<<< orphan*/  RegProcedure ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HASHSTANDARD_PROC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint32
FUNC6(Relation rel, Datum key, Oid keytype)
{
	RegProcedure hash_proc;
	Oid			collation;

	/* XXX assumes index has only one attribute */
	hash_proc = FUNC5(rel->rd_opfamily[0],
								  keytype,
								  keytype,
								  HASHSTANDARD_PROC);
	if (!FUNC2(hash_proc))
		FUNC4(ERROR, "missing support function %d(%u,%u) for index \"%s\"",
			 HASHSTANDARD_PROC, keytype, keytype,
			 FUNC3(rel));
	collation = rel->rd_indcollation[0];

	return FUNC0(FUNC1(hash_proc, collation, key));
}