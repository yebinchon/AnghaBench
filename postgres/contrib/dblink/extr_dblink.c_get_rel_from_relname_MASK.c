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
typedef  int /*<<< orphan*/  text ;
struct TYPE_8__ {TYPE_1__* rd_rel; } ;
struct TYPE_7__ {int /*<<< orphan*/  relkind; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  RangeVar ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  scalar_t__ AclResult ;
typedef  int /*<<< orphan*/  AclMode ;

/* Variables and functions */
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static Relation
FUNC9(text *relname_text, LOCKMODE lockmode, AclMode aclmode)
{
	RangeVar   *relvar;
	Relation	rel;
	AclResult	aclresult;

	relvar = FUNC5(FUNC8(relname_text));
	rel = FUNC7(relvar, lockmode);

	aclresult = FUNC6(FUNC2(rel), FUNC0(),
								  aclmode);
	if (aclresult != ACLCHECK_OK)
		FUNC3(aclresult, FUNC4(rel->rd_rel->relkind),
					   FUNC1(rel));

	return rel;
}