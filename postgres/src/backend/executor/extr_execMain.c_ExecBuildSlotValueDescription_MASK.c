#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/ * tts_values; scalar_t__* tts_isnull; } ;
typedef  TYPE_1__ TupleTableSlot ;
typedef  TYPE_2__* TupleDesc ;
struct TYPE_17__ {int /*<<< orphan*/  atttypid; int /*<<< orphan*/  attname; scalar_t__ attnum; scalar_t__ attisdropped; } ;
struct TYPE_16__ {char* data; int len; } ;
struct TYPE_15__ {int natts; } ;
typedef  TYPE_3__ StringInfoData ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_4__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  Bitmapset ;
typedef  scalar_t__ AclResult ;

/* Variables and functions */
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ACL_SELECT ; 
 scalar_t__ FirstLowInvalidHeapAttributeNumber ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  InvalidOid ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ RLS_ENABLED ; 
 TYPE_4__* FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int FUNC15 (char*) ; 

__attribute__((used)) static char *
FUNC16(Oid reloid,
							  TupleTableSlot *slot,
							  TupleDesc tupdesc,
							  Bitmapset *modifiedCols,
							  int maxfieldlen)
{
	StringInfoData buf;
	StringInfoData collist;
	bool		write_comma = false;
	bool		write_comma_collist = false;
	int			i;
	AclResult	aclresult;
	bool		table_perm = false;
	bool		any_perm = false;

	/*
	 * Check if RLS is enabled and should be active for the relation; if so,
	 * then don't return anything.  Otherwise, go through normal permission
	 * checks.
	 */
	if (FUNC8(reloid, InvalidOid, true) == RLS_ENABLED)
		return NULL;

	FUNC10(&buf);

	FUNC5(&buf, '(');

	/*
	 * Check if the user has permissions to see the row.  Table-level SELECT
	 * allows access to all columns.  If the user does not have table-level
	 * SELECT then we check each column and include those the user has SELECT
	 * rights on.  Additionally, we always include columns the user provided
	 * data for.
	 */
	aclresult = FUNC12(reloid, FUNC0(), ACL_SELECT);
	if (aclresult != ACLCHECK_OK)
	{
		/* Set up the buffer for the column list */
		FUNC10(&collist);
		FUNC5(&collist, '(');
	}
	else
		table_perm = any_perm = true;

	/* Make sure the tuple is fully deconstructed */
	FUNC14(slot);

	for (i = 0; i < tupdesc->natts; i++)
	{
		bool		column_perm = false;
		char	   *val;
		int			vallen;
		Form_pg_attribute att = FUNC3(tupdesc, i);

		/* ignore dropped columns */
		if (att->attisdropped)
			continue;

		if (!table_perm)
		{
			/*
			 * No table-level SELECT, so need to make sure they either have
			 * SELECT rights on the column or that they have provided the data
			 * for the column.  If not, omit this column from the error
			 * message.
			 */
			aclresult = FUNC11(reloid, att->attnum,
											  FUNC0(), ACL_SELECT);
			if (FUNC7(att->attnum - FirstLowInvalidHeapAttributeNumber,
							  modifiedCols) || aclresult == ACLCHECK_OK)
			{
				column_perm = any_perm = true;

				if (write_comma_collist)
					FUNC6(&collist, ", ");
				else
					write_comma_collist = true;

				FUNC6(&collist, FUNC1(att->attname));
			}
		}

		if (table_perm || column_perm)
		{
			if (slot->tts_isnull[i])
				val = "null";
			else
			{
				Oid			foutoid;
				bool		typisvarlena;

				FUNC9(att->atttypid,
								  &foutoid, &typisvarlena);
				val = FUNC2(foutoid, slot->tts_values[i]);
			}

			if (write_comma)
				FUNC6(&buf, ", ");
			else
				write_comma = true;

			/* truncate if needed */
			vallen = FUNC15(val);
			if (vallen <= maxfieldlen)
				FUNC4(&buf, val, vallen);
			else
			{
				vallen = FUNC13(val, vallen, maxfieldlen);
				FUNC4(&buf, val, vallen);
				FUNC6(&buf, "...");
			}
		}
	}

	/* If we end up with zero columns being returned, then return NULL. */
	if (!any_perm)
		return NULL;

	FUNC5(&buf, ')');

	if (!table_perm)
	{
		FUNC6(&collist, ") = ");
		FUNC4(&collist, buf.data, buf.len);

		return collist.data;
	}

	return buf.data;
}