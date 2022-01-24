#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  opcname; int /*<<< orphan*/  opcnamespace; int /*<<< orphan*/  opcmethod; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_opclass ;

/* Variables and functions */
 int /*<<< orphan*/  CLAOID ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static List *
FUNC12(Oid opclass, Oid actual_datatype)
{
	List	   *result = NIL;
	HeapTuple	ht_opc;
	Form_pg_opclass opc_rec;

	ht_opc = FUNC6(CLAOID, FUNC4(opclass));
	if (!FUNC2(ht_opc))
		FUNC7(ERROR, "cache lookup failed for opclass %u", opclass);
	opc_rec = (Form_pg_opclass) FUNC0(ht_opc);

	if (FUNC1(actual_datatype, opc_rec->opcmethod) != opclass)
	{
		/* For simplicity, we always schema-qualify the name */
		char	   *nsp_name = FUNC8(opc_rec->opcnamespace);
		char	   *opc_name = FUNC11(FUNC3(opc_rec->opcname));

		result = FUNC9(FUNC10(nsp_name), FUNC10(opc_name));
	}

	FUNC5(ht_opc);
	return result;
}