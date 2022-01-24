#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ fn_strict; } ;
struct fp_info {int /*<<< orphan*/  fname; int /*<<< orphan*/  rettype; TYPE_7__ flinfo; int /*<<< orphan*/  namespace; } ;
typedef  int /*<<< orphan*/  int16 ;
struct TYPE_10__ {int nargs; int isnull; TYPE_1__* args; } ;
struct TYPE_9__ {scalar_t__ isnull; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  scalar_t__ Oid ;
typedef  scalar_t__ Datum ;
typedef  scalar_t__ AclResult ;

/* Variables and functions */
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ACL_EXECUTE ; 
 int /*<<< orphan*/  ACL_USAGE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ERRCODE_IN_FAILED_SQL_TRANSACTION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC_MAX_ARGS ; 
 int /*<<< orphan*/  FrontendProtocol ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__,TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG ; 
 scalar_t__ LOGSTMT_ALL ; 
 int /*<<< orphan*/  OBJECT_FUNCTION ; 
 int /*<<< orphan*/  OBJECT_SCHEMA ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 TYPE_2__* fcinfo ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,struct fp_info*) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ log_statement ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,struct fp_info*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,struct fp_info*,TYPE_2__*) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 

void
FUNC28(StringInfo msgBuf)
{
	FUNC8(fcinfo, FUNC_MAX_ARGS);
	Oid			fid;
	AclResult	aclresult;
	int16		rformat;
	Datum		retval;
	struct fp_info my_fp;
	struct fp_info *fip;
	bool		callit;
	bool		was_logged = false;
	char		msec_str[32];

	/*
	 * We only accept COMMIT/ABORT if we are in an aborted transaction, and
	 * COMMIT/ABORT cannot be executed through the fastpath interface.
	 */
	if (FUNC7())
		FUNC15(ERROR,
				(FUNC16(ERRCODE_IN_FAILED_SQL_TRANSACTION),
				 FUNC17("current transaction is aborted, "
						"commands ignored until end of transaction block")));

	/*
	 * Now that we know we are in a valid transaction, set snapshot in case
	 * needed by function itself or one of the datatype I/O routines.
	 */
	FUNC11(FUNC2());

	/*
	 * Begin parsing the buffer contents.
	 */
	if (FUNC9(FrontendProtocol) < 3)
		(void) FUNC27(msgBuf); /* dummy string */

	fid = (Oid) FUNC26(msgBuf, 4);	/* function oid */

	/*
	 * There used to be a lame attempt at caching lookup info here. Now we
	 * just do the lookups on every call.
	 */
	fip = &my_fp;
	FUNC18(fid, fip);

	/* Log as soon as we have the function OID and name */
	if (log_statement == LOGSTMT_ALL)
	{
		FUNC15(LOG,
				(FUNC17("fastpath function call: \"%s\" (OID %u)",
						fip->fname, fid)));
		was_logged = true;
	}

	/*
	 * Check permission to access and call function.  Since we didn't go
	 * through a normal name lookup, we need to check schema usage too.
	 */
	aclresult = FUNC23(fip->namespace, FUNC3(), ACL_USAGE);
	if (aclresult != ACLCHECK_OK)
		FUNC13(aclresult, OBJECT_SCHEMA,
					   FUNC20(fip->namespace));
	FUNC6(fip->namespace, true);

	aclresult = FUNC24(fid, FUNC3(), ACL_EXECUTE);
	if (aclresult != ACLCHECK_OK)
		FUNC13(aclresult, OBJECT_FUNCTION,
					   FUNC19(fid));
	FUNC5(fid);

	/*
	 * Prepare function call info block and insert arguments.
	 *
	 * Note: for now we pass collation = InvalidOid, so collation-sensitive
	 * functions can't be called this way.  Perhaps we should pass
	 * DEFAULT_COLLATION_OID, instead?
	 */
	FUNC4(*fcinfo, &fip->flinfo, 0, InvalidOid, NULL, NULL);

	if (FUNC9(FrontendProtocol) >= 3)
		rformat = FUNC21(msgBuf, fip, fcinfo);
	else
		rformat = FUNC22(msgBuf, fip, fcinfo);

	/* Verify we reached the end of the message where expected. */
	FUNC25(msgBuf);

	/*
	 * If func is strict, must not call it for null args.
	 */
	callit = true;
	if (fip->flinfo.fn_strict)
	{
		int			i;

		for (i = 0; i < fcinfo->nargs; i++)
		{
			if (fcinfo->args[i].isnull)
			{
				callit = false;
				break;
			}
		}
	}

	if (callit)
	{
		/* Okay, do it ... */
		retval = FUNC1(fcinfo);
	}
	else
	{
		fcinfo->isnull = true;
		retval = (Datum) 0;
	}

	/* ensure we do at least one CHECK_FOR_INTERRUPTS per function call */
	FUNC0();

	FUNC12(retval, fcinfo->isnull, fip->rettype, rformat);

	/* We no longer need the snapshot */
	FUNC10();

	/*
	 * Emit duration logging if appropriate.
	 */
	switch (FUNC14(msec_str, was_logged))
	{
		case 1:
			FUNC15(LOG,
					(FUNC17("duration: %s ms", msec_str)));
			break;
		case 2:
			FUNC15(LOG,
					(FUNC17("duration: %s ms  fastpath function call: \"%s\" (OID %u)",
							msec_str, fip->fname, fid)));
			break;
	}
}