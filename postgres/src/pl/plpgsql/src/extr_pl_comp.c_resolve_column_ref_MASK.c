#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  location; int /*<<< orphan*/  fields; } ;
struct TYPE_17__ {scalar_t__* datums; } ;
struct TYPE_16__ {int /*<<< orphan*/  ns; TYPE_1__* func; } ;
struct TYPE_15__ {int itemtype; int itemno; } ;
struct TYPE_14__ {int firstfield; } ;
struct TYPE_13__ {size_t recparentno; int nextfield; int /*<<< orphan*/  fieldname; int /*<<< orphan*/  dtype; } ;
struct TYPE_12__ {TYPE_6__* cur_estate; } ;
typedef  int /*<<< orphan*/  ParseState ;
typedef  TYPE_2__ PLpgSQL_recfield ;
typedef  TYPE_3__ PLpgSQL_rec ;
typedef  TYPE_4__ PLpgSQL_nsitem ;
typedef  TYPE_5__ PLpgSQL_expr ;
typedef  TYPE_6__ PLpgSQL_execstate ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_7__ ColumnRef ;

/* Variables and functions */
 int /*<<< orphan*/  A_Star ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_COLUMN ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLPGSQL_DTYPE_RECFIELD ; 
#define  PLPGSQL_NSTYPE_REC 129 
#define  PLPGSQL_NSTYPE_VAR 128 
 int /*<<< orphan*/  String ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC12 (int /*<<< orphan*/ ,int,char const*,char const*,char const*,int*) ; 
 char* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static Node *
FUNC15(ParseState *pstate, PLpgSQL_expr *expr,
				   ColumnRef *cref, bool error_if_no_field)
{
	PLpgSQL_execstate *estate;
	PLpgSQL_nsitem *nse;
	const char *name1;
	const char *name2 = NULL;
	const char *name3 = NULL;
	const char *colname = NULL;
	int			nnames;
	int			nnames_scalar = 0;
	int			nnames_wholerow = 0;
	int			nnames_field = 0;

	/*
	 * We use the function's current estate to resolve parameter data types.
	 * This is really pretty bogus because there is no provision for updating
	 * plans when those types change ...
	 */
	estate = expr->func->cur_estate;

	/*----------
	 * The allowed syntaxes are:
	 *
	 * A		Scalar variable reference, or whole-row record reference.
	 * A.B		Qualified scalar or whole-row reference, or field reference.
	 * A.B.C	Qualified record field reference.
	 * A.*		Whole-row record reference.
	 * A.B.*	Qualified whole-row record reference.
	 *----------
	 */
	switch (FUNC7(cref->fields))
	{
		case 1:
			{
				Node	   *field1 = (Node *) FUNC6(cref->fields);

				FUNC0(FUNC1(field1, String));
				name1 = FUNC13(field1);
				nnames_scalar = 1;
				nnames_wholerow = 1;
				break;
			}
		case 2:
			{
				Node	   *field1 = (Node *) FUNC6(cref->fields);
				Node	   *field2 = (Node *) FUNC8(cref->fields);

				FUNC0(FUNC1(field1, String));
				name1 = FUNC13(field1);

				/* Whole-row reference? */
				if (FUNC1(field2, A_Star))
				{
					/* Set name2 to prevent matches to scalar variables */
					name2 = "*";
					nnames_wholerow = 1;
					break;
				}

				FUNC0(FUNC1(field2, String));
				name2 = FUNC13(field2);
				colname = name2;
				nnames_scalar = 2;
				nnames_wholerow = 2;
				nnames_field = 1;
				break;
			}
		case 3:
			{
				Node	   *field1 = (Node *) FUNC6(cref->fields);
				Node	   *field2 = (Node *) FUNC8(cref->fields);
				Node	   *field3 = (Node *) FUNC9(cref->fields);

				FUNC0(FUNC1(field1, String));
				name1 = FUNC13(field1);
				FUNC0(FUNC1(field2, String));
				name2 = FUNC13(field2);

				/* Whole-row reference? */
				if (FUNC1(field3, A_Star))
				{
					/* Set name3 to prevent matches to scalar variables */
					name3 = "*";
					nnames_wholerow = 2;
					break;
				}

				FUNC0(FUNC1(field3, String));
				name3 = FUNC13(field3);
				colname = name3;
				nnames_field = 2;
				break;
			}
		default:
			/* too many names, ignore */
			return NULL;
	}

	nse = FUNC12(expr->ns, false,
							name1, name2, name3,
							&nnames);

	if (nse == NULL)
		return NULL;			/* name not known to plpgsql */

	switch (nse->itemtype)
	{
		case PLPGSQL_NSTYPE_VAR:
			if (nnames == nnames_scalar)
				return FUNC10(expr, nse->itemno, cref->location);
			break;
		case PLPGSQL_NSTYPE_REC:
			if (nnames == nnames_wholerow)
				return FUNC10(expr, nse->itemno, cref->location);
			if (nnames == nnames_field)
			{
				/* colname could be a field in this record */
				PLpgSQL_rec *rec = (PLpgSQL_rec *) estate->datums[nse->itemno];
				int			i;

				/* search for a datum referencing this field */
				i = rec->firstfield;
				while (i >= 0)
				{
					PLpgSQL_recfield *fld = (PLpgSQL_recfield *) estate->datums[i];

					FUNC0(fld->dtype == PLPGSQL_DTYPE_RECFIELD &&
						   fld->recparentno == nse->itemno);
					if (FUNC14(fld->fieldname, colname) == 0)
					{
						return FUNC10(expr, i, cref->location);
					}
					i = fld->nextfield;
				}

				/*
				 * We should not get here, because a RECFIELD datum should
				 * have been built at parse time for every possible qualified
				 * reference to fields of this record.  But if we do, handle
				 * it like field-not-found: throw error or return NULL.
				 */
				if (error_if_no_field)
					FUNC3(ERROR,
							(FUNC4(ERRCODE_UNDEFINED_COLUMN),
							 FUNC5("record \"%s\" has no field \"%s\"",
									(nnames_field == 1) ? name1 : name2,
									colname),
							 FUNC11(pstate, cref->location)));
			}
			break;
		default:
			FUNC2(ERROR, "unrecognized plpgsql itemtype: %d", nse->itemtype);
	}

	/* Name format doesn't match the plpgsql variable type */
	return NULL;
}