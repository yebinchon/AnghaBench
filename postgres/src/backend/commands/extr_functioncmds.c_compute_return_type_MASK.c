#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ typmods; int setof; int /*<<< orphan*/  names; } ;
typedef  TYPE_1__ TypeName ;
typedef  scalar_t__ Type ;
struct TYPE_10__ {int /*<<< orphan*/  typisdefined; } ;
struct TYPE_9__ {scalar_t__ objectId; } ;
typedef  scalar_t__ Oid ;
typedef  TYPE_2__ ObjectAddress ;
typedef  TYPE_3__* Form_pg_type ;
typedef  scalar_t__ AclResult ;

/* Variables and functions */
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ACL_CREATE ; 
 int /*<<< orphan*/  ACL_USAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ClanguageId ; 
 int /*<<< orphan*/  ERRCODE_INVALID_FUNCTION_DEFINITION ; 
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ INTERNALlanguageId ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ NIL ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  OBJECT_SCHEMA ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ SQLlanguageId ; 
 char* FUNC7 (TYPE_1__*) ; 
 TYPE_2__ FUNC8 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (scalar_t__) ; 

__attribute__((used)) static void
FUNC19(TypeName *returnType, Oid languageOid,
					Oid *prorettype_p, bool *returnsSet_p)
{
	Oid			rettype;
	Type		typtup;
	AclResult	aclresult;

	typtup = FUNC3(NULL, returnType, NULL, false);

	if (typtup)
	{
		if (!((Form_pg_type) FUNC1(typtup))->typisdefined)
		{
			if (languageOid == SQLlanguageId)
				FUNC11(ERROR,
						(FUNC12(ERRCODE_INVALID_FUNCTION_DEFINITION),
						 FUNC14("SQL function cannot return shell type %s",
								FUNC7(returnType))));
			else
				FUNC11(NOTICE,
						(FUNC12(ERRCODE_WRONG_OBJECT_TYPE),
						 FUNC14("return type %s is only a shell",
								FUNC7(returnType))));
		}
		rettype = FUNC18(typtup);
		FUNC6(typtup);
	}
	else
	{
		char	   *typnam = FUNC7(returnType);
		Oid			namespaceId;
		AclResult	aclresult;
		char	   *typname;
		ObjectAddress address;

		/*
		 * Only C-coded functions can be I/O functions.  We enforce this
		 * restriction here mainly to prevent littering the catalogs with
		 * shell types due to simple typos in user-defined function
		 * definitions.
		 */
		if (languageOid != INTERNALlanguageId &&
			languageOid != ClanguageId)
			FUNC11(ERROR,
					(FUNC12(ERRCODE_UNDEFINED_OBJECT),
					 FUNC14("type \"%s\" does not exist", typnam)));

		/* Reject if there's typmod decoration, too */
		if (returnType->typmods != NIL)
			FUNC11(ERROR,
					(FUNC12(ERRCODE_SYNTAX_ERROR),
					 FUNC14("type modifier cannot be specified for shell type \"%s\"",
							typnam)));

		/* Otherwise, go ahead and make a shell type */
		FUNC11(NOTICE,
				(FUNC12(ERRCODE_UNDEFINED_OBJECT),
				 FUNC14("type \"%s\" is not yet defined", typnam),
				 FUNC13("Creating a shell type definition.")));
		namespaceId = FUNC5(returnType->names,
														&typname);
		aclresult = FUNC16(namespaceId, FUNC2(),
										  ACL_CREATE);
		if (aclresult != ACLCHECK_OK)
			FUNC9(aclresult, OBJECT_SCHEMA,
						   FUNC15(namespaceId));
		address = FUNC8(typname, namespaceId, FUNC2());
		rettype = address.objectId;
		FUNC0(FUNC4(rettype));
	}

	aclresult = FUNC17(rettype, FUNC2(), ACL_USAGE);
	if (aclresult != ACLCHECK_OK)
		FUNC10(aclresult, rettype);

	*prorettype_p = rettype;
	*returnsSet_p = returnType->setof;
}