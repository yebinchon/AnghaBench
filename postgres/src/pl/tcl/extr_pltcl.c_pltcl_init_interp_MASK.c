#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int user_id; int /*<<< orphan*/ * interp; int /*<<< orphan*/  query_hash; } ;
typedef  TYPE_1__ pltcl_interp_desc ;
typedef  int /*<<< orphan*/  interpname ;
typedef  int /*<<< orphan*/  Tcl_Interp ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  TCL_STRING_KEYS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  pltcl_SPI_execute ; 
 int /*<<< orphan*/  pltcl_SPI_execute_plan ; 
 int /*<<< orphan*/  pltcl_SPI_prepare ; 
 int /*<<< orphan*/  pltcl_argisnull ; 
 int /*<<< orphan*/  pltcl_commit ; 
 int /*<<< orphan*/  pltcl_elog ; 
 int /*<<< orphan*/  pltcl_hold_interp ; 
 int /*<<< orphan*/  pltcl_quote ; 
 int /*<<< orphan*/  pltcl_returnnext ; 
 int /*<<< orphan*/  pltcl_returnnull ; 
 int /*<<< orphan*/  pltcl_rollback ; 
 int /*<<< orphan*/  pltcl_subtransaction ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,int) ; 

__attribute__((used)) static void
FUNC11(pltcl_interp_desc *interp_desc, Oid prolang, bool pltrusted)
{
	Tcl_Interp *interp;
	char		interpname[32];

	/************************************************************
	 * Create the Tcl interpreter as a slave of pltcl_hold_interp.
	 * Note: Tcl automatically does Tcl_Init in the untrusted case,
	 * and it's not wanted in the trusted case.
	 ************************************************************/
	FUNC10(interpname, sizeof(interpname), "slave_%u", interp_desc->user_id);
	if ((interp = FUNC5(pltcl_hold_interp, interpname,
								  pltrusted ? 1 : 0)) == NULL)
		FUNC9(ERROR, "could not create slave Tcl interpreter");

	/************************************************************
	 * Initialize the query hash table associated with interpreter
	 ************************************************************/
	FUNC7(&interp_desc->query_hash, TCL_STRING_KEYS);

	/************************************************************
	 * Install the commands for SPI support in the interpreter
	 ************************************************************/
	FUNC4(interp, "elog",
						 pltcl_elog, NULL, NULL);
	FUNC4(interp, "quote",
						 pltcl_quote, NULL, NULL);
	FUNC4(interp, "argisnull",
						 pltcl_argisnull, NULL, NULL);
	FUNC4(interp, "return_null",
						 pltcl_returnnull, NULL, NULL);
	FUNC4(interp, "return_next",
						 pltcl_returnnext, NULL, NULL);
	FUNC4(interp, "spi_exec",
						 pltcl_SPI_execute, NULL, NULL);
	FUNC4(interp, "spi_prepare",
						 pltcl_SPI_prepare, NULL, NULL);
	FUNC4(interp, "spi_execp",
						 pltcl_SPI_execute_plan, NULL, NULL);
	FUNC4(interp, "subtransaction",
						 pltcl_subtransaction, NULL, NULL);
	FUNC4(interp, "commit",
						 pltcl_commit, NULL, NULL);
	FUNC4(interp, "rollback",
						 pltcl_rollback, NULL, NULL);

	/************************************************************
	 * Call the appropriate start_proc, if there is one.
	 *
	 * We must set interp_desc->interp before the call, else the start_proc
	 * won't find the interpreter it's supposed to use.  But, if the
	 * start_proc fails, we want to abandon use of the interpreter.
	 ************************************************************/
	FUNC3();
	{
		interp_desc->interp = interp;
		FUNC8(prolang, pltrusted);
	}
	FUNC0();
	{
		interp_desc->interp = NULL;
		FUNC6(interp);
		FUNC2();
	}
	FUNC1();
}