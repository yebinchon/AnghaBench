#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* data; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  PartitionKey ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Datum ;
typedef  scalar_t__ AttrNumber ;
typedef  scalar_t__ AclResult ;

/* Variables and functions */
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ACL_SELECT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ InvalidAttrNumber ; 
 int /*<<< orphan*/  InvalidOid ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ RLS_ENABLED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int FUNC17 (char*,int,int) ; 
 int FUNC18 (char*) ; 

__attribute__((used)) static char *
FUNC19(Relation rel,
									 Datum *values,
									 bool *isnull,
									 int maxfieldlen)
{
	StringInfoData buf;
	PartitionKey key = FUNC2(rel);
	int			partnatts = FUNC12(key);
	int			i;
	Oid			relid = FUNC3(rel);
	AclResult	aclresult;

	if (FUNC8(relid, InvalidOid, true) == RLS_ENABLED)
		return NULL;

	/* If the user has table-level access, just go build the description. */
	aclresult = FUNC15(relid, FUNC0(), ACL_SELECT);
	if (aclresult != ACLCHECK_OK)
	{
		/*
		 * Step through the columns of the partition key and make sure the
		 * user has SELECT rights on all of them.
		 */
		for (i = 0; i < partnatts; i++)
		{
			AttrNumber	attnum = FUNC10(key, i);

			/*
			 * If this partition key column is an expression, we return no
			 * detail rather than try to figure out what column(s) the
			 * expression includes and if the user has SELECT rights on them.
			 */
			if (attnum == InvalidAttrNumber ||
				FUNC14(relid, attnum, FUNC0(),
									  ACL_SELECT) != ACLCHECK_OK)
				return NULL;
		}
	}

	FUNC13(&buf);
	FUNC5(&buf, "(%s) = (",
					 FUNC16(relid, true));

	for (i = 0; i < partnatts; i++)
	{
		char	   *val;
		int			vallen;

		if (isnull[i])
			val = "null";
		else
		{
			Oid			foutoid;
			bool		typisvarlena;

			FUNC9(FUNC11(key, i),
							  &foutoid, &typisvarlena);
			val = FUNC1(foutoid, values[i]);
		}

		if (i > 0)
			FUNC7(&buf, ", ");

		/* truncate if needed */
		vallen = FUNC18(val);
		if (vallen <= maxfieldlen)
			FUNC4(&buf, val, vallen);
		else
		{
			vallen = FUNC17(val, vallen, maxfieldlen);
			FUNC4(&buf, val, vallen);
			FUNC7(&buf, "...");
		}
	}

	FUNC6(&buf, ')');

	return buf.data;
}