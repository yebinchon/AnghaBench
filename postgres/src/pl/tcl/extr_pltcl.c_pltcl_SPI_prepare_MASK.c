#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int nargs; void** argtypes; void** argtypioparams; int /*<<< orphan*/  qname; int /*<<< orphan*/ * plan; int /*<<< orphan*/ * arginfuncs; } ;
typedef  TYPE_3__ pltcl_query_desc ;
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  Tcl_Obj ;
typedef  int /*<<< orphan*/  Tcl_Interp ;
typedef  int /*<<< orphan*/  Tcl_HashTable ;
typedef  int /*<<< orphan*/  Tcl_HashEntry ;
struct TYPE_9__ {TYPE_2__* prodesc; } ;
struct TYPE_7__ {TYPE_1__* interp_desc; } ;
struct TYPE_6__ {int /*<<< orphan*/  query_hash; } ;
typedef  int /*<<< orphan*/  ResourceOwner ;
typedef  void* Oid ;
typedef  int /*<<< orphan*/ * volatile MemoryContext ;
typedef  int /*<<< orphan*/  FmgrInfo ;
typedef  int /*<<< orphan*/  ClientData ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_SMALL_SIZES ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * CurrentMemoryContext ; 
 int /*<<< orphan*/  CurrentResourceOwner ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * volatile) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * volatile) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int,void**) ; 
 int TCL_ERROR ; 
 scalar_t__ TCL_OK ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ * const) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ * const,int*,int /*<<< orphan*/ ***) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ * const*,char*) ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 int /*<<< orphan*/  UTF_BEGIN ; 
 int /*<<< orphan*/  UTF_END ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ * volatile) ; 
 int /*<<< orphan*/  FUNC18 (void*,void**,void**) ; 
 scalar_t__ FUNC19 (int) ; 
 scalar_t__ FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *,int) ; 
 TYPE_5__* pltcl_current_call_state ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ * volatile,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ * volatile,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ * volatile,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int,char*,TYPE_3__*) ; 

__attribute__((used)) static int
FUNC26(ClientData cdata, Tcl_Interp *interp,
				  int objc, Tcl_Obj *const objv[])
{
	volatile MemoryContext plan_cxt = NULL;
	int			nargs;
	Tcl_Obj   **argsObj;
	pltcl_query_desc *qdesc;
	int			i;
	Tcl_HashEntry *hashent;
	int			hashnew;
	Tcl_HashTable *query_hash;
	MemoryContext oldcontext = CurrentMemoryContext;
	ResourceOwner oldowner = CurrentResourceOwner;

	/************************************************************
	 * Check the call syntax
	 ************************************************************/
	if (objc != 3)
	{
		FUNC14(interp, 1, objv, "query argtypes");
		return TCL_ERROR;
	}

	/************************************************************
	 * Split the argument type list
	 ************************************************************/
	if (FUNC10(interp, objv[2], &nargs, &argsObj) != TCL_OK)
		return TCL_ERROR;

	/************************************************************
	 * Allocate the new querydesc structure
	 *
	 * struct qdesc and subsidiary data all live in plan_cxt.  Note that if the
	 * function is recompiled for whatever reason, permanent memory leaks
	 * occur.  FIXME someday.
	 ************************************************************/
	plan_cxt = FUNC0(TopMemoryContext,
									 "PL/Tcl spi_prepare query",
									 ALLOCSET_SMALL_SIZES);
	FUNC2(plan_cxt);
	qdesc = (pltcl_query_desc *) FUNC20(sizeof(pltcl_query_desc));
	FUNC25(qdesc->qname, sizeof(qdesc->qname), "%p", qdesc);
	qdesc->nargs = nargs;
	qdesc->argtypes = (Oid *) FUNC19(nargs * sizeof(Oid));
	qdesc->arginfuncs = (FmgrInfo *) FUNC19(nargs * sizeof(FmgrInfo));
	qdesc->argtypioparams = (Oid *) FUNC19(nargs * sizeof(Oid));
	FUNC2(oldcontext);

	/************************************************************
	 * Execute the prepare inside a sub-transaction, so we can cope with
	 * errors sanely
	 ************************************************************/

	FUNC23(oldcontext, oldowner);

	FUNC5();
	{
		/************************************************************
		 * Resolve argument type names and then look them up by oid
		 * in the system cache, and remember the required information
		 * for input conversion.
		 ************************************************************/
		for (i = 0; i < nargs; i++)
		{
			Oid			typId,
						typInput,
						typIOParam;
			int32		typmod;

			FUNC21(FUNC9(argsObj[i]), &typId, &typmod, false);

			FUNC18(typId, &typInput, &typIOParam);

			qdesc->argtypes[i] = typId;
			FUNC17(typInput, &(qdesc->arginfuncs[i]), plan_cxt);
			qdesc->argtypioparams[i] = typIOParam;
		}

		/************************************************************
		 * Prepare the plan and check for errors
		 ************************************************************/
		UTF_BEGIN;
		qdesc->plan = FUNC7(FUNC15(FUNC9(objv[1])),
								  nargs, qdesc->argtypes);
		UTF_END;

		if (qdesc->plan == NULL)
			FUNC16(ERROR, "SPI_prepare() failed");

		/************************************************************
		 * Save the plan into permanent memory (right now it's in the
		 * SPI procCxt, which will go away at function end).
		 ************************************************************/
		if (FUNC6(qdesc->plan))
			FUNC16(ERROR, "SPI_keepplan() failed");

		FUNC24(oldcontext, oldowner);
	}
	FUNC3();
	{
		FUNC22(interp, oldcontext, oldowner);

		FUNC1(plan_cxt);

		return TCL_ERROR;
	}
	FUNC4();

	/************************************************************
	 * Insert a hashtable entry for the plan and return
	 * the key to the caller
	 ************************************************************/
	query_hash = &pltcl_current_call_state->prodesc->interp_desc->query_hash;

	hashent = FUNC8(query_hash, qdesc->qname, &hashnew);
	FUNC12(hashent, (ClientData) qdesc);

	/* qname is ASCII, so no need for encoding conversion */
	FUNC13(interp, FUNC11(qdesc->qname, -1));
	return TCL_OK;
}