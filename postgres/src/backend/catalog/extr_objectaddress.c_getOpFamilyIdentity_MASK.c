#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  amname; } ;
struct TYPE_3__ {int /*<<< orphan*/  opfname; int /*<<< orphan*/  opfnamespace; int /*<<< orphan*/  opfmethod; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_opfamily ;
typedef  TYPE_2__* Form_pg_am ;

/* Variables and functions */
 int /*<<< orphan*/  AMOID ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPFAMILYOID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

__attribute__((used)) static void
FUNC12(StringInfo buffer, Oid opfid, List **object)
{
	HeapTuple	opfTup;
	Form_pg_opfamily opfForm;
	HeapTuple	amTup;
	Form_pg_am	amForm;
	char	   *schema;

	opfTup = FUNC5(OPFAMILYOID, FUNC3(opfid));
	if (!FUNC1(opfTup))
		FUNC7(ERROR, "cache lookup failed for opfamily %u", opfid);
	opfForm = (Form_pg_opfamily) FUNC0(opfTup);

	amTup = FUNC5(AMOID, FUNC3(opfForm->opfmethod));
	if (!FUNC1(amTup))
		FUNC7(ERROR, "cache lookup failed for access method %u",
			 opfForm->opfmethod);
	amForm = (Form_pg_am) FUNC0(amTup);

	schema = FUNC8(opfForm->opfnamespace);
	FUNC6(buffer, "%s USING %s",
					 FUNC11(schema,
												FUNC2(opfForm->opfname)),
					 FUNC2(amForm->amname));

	if (object)
		*object = FUNC9(FUNC10(FUNC2(amForm->amname)),
							 FUNC10(schema),
							 FUNC10(FUNC2(opfForm->opfname)));

	FUNC4(amTup);
	FUNC4(opfTup);
}