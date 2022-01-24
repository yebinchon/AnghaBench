#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  location; int /*<<< orphan*/  fields; } ;
struct TYPE_17__ {int p_expr_kind; int /*<<< orphan*/ * (* p_post_columnref_hook ) (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  p_last_srf; int /*<<< orphan*/ * (* p_pre_columnref_hook ) (TYPE_1__*,TYPE_2__*) ;} ;
typedef  int /*<<< orphan*/  RangeTblEntry ;
typedef  TYPE_1__ ParseState ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_2__ ColumnRef ;

/* Variables and functions */
 int /*<<< orphan*/  A_Star ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_AMBIGUOUS_COLUMN ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
#define  EXPR_KIND_ALTER_COL_TRANSFORM 168 
#define  EXPR_KIND_CALL_ARGUMENT 167 
#define  EXPR_KIND_CHECK_CONSTRAINT 166 
#define  EXPR_KIND_COLUMN_DEFAULT 165 
#define  EXPR_KIND_COPY_WHERE 164 
#define  EXPR_KIND_DISTINCT_ON 163 
#define  EXPR_KIND_DOMAIN_CHECK 162 
#define  EXPR_KIND_EXECUTE_PARAMETER 161 
#define  EXPR_KIND_FILTER 160 
#define  EXPR_KIND_FROM_FUNCTION 159 
#define  EXPR_KIND_FROM_SUBSELECT 158 
#define  EXPR_KIND_FUNCTION_DEFAULT 157 
#define  EXPR_KIND_GENERATED_COLUMN 156 
#define  EXPR_KIND_GROUP_BY 155 
#define  EXPR_KIND_HAVING 154 
#define  EXPR_KIND_INDEX_EXPRESSION 153 
#define  EXPR_KIND_INDEX_PREDICATE 152 
#define  EXPR_KIND_INSERT_TARGET 151 
#define  EXPR_KIND_JOIN_ON 150 
#define  EXPR_KIND_JOIN_USING 149 
#define  EXPR_KIND_LIMIT 148 
#define  EXPR_KIND_NONE 147 
#define  EXPR_KIND_OFFSET 146 
#define  EXPR_KIND_ORDER_BY 145 
#define  EXPR_KIND_OTHER 144 
#define  EXPR_KIND_PARTITION_BOUND 143 
#define  EXPR_KIND_PARTITION_EXPRESSION 142 
#define  EXPR_KIND_POLICY 141 
#define  EXPR_KIND_RETURNING 140 
#define  EXPR_KIND_SELECT_TARGET 139 
#define  EXPR_KIND_TRIGGER_WHEN 138 
#define  EXPR_KIND_UPDATE_SOURCE 137 
#define  EXPR_KIND_UPDATE_TARGET 136 
#define  EXPR_KIND_VALUES 135 
#define  EXPR_KIND_VALUES_SINGLE 134 
#define  EXPR_KIND_WHERE 133 
#define  EXPR_KIND_WINDOW_FRAME_GROUPS 132 
#define  EXPR_KIND_WINDOW_FRAME_RANGE 131 
#define  EXPR_KIND_WINDOW_FRAME_ROWS 130 
#define  EXPR_KIND_WINDOW_ORDER 129 
#define  EXPR_KIND_WINDOW_PARTITION 128 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  String ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC22 (TYPE_1__*,char*,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC23 (TYPE_1__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC26 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC27 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC28 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Node *
FUNC29(ParseState *pstate, ColumnRef *cref)
{
	Node	   *node = NULL;
	char	   *nspname = NULL;
	char	   *relname = NULL;
	char	   *colname = NULL;
	RangeTblEntry *rte;
	int			levels_up;
	enum
	{
		CRERR_NO_COLUMN,
		CRERR_NO_RTE,
		CRERR_WRONG_DB,
		CRERR_TOO_MANY
	}			crerr = CRERR_NO_COLUMN;
	const char *err;

	/*
	 * Check to see if the column reference is in an invalid place within the
	 * query.  We allow column references in most places, except in default
	 * expressions and partition bound expressions.
	 */
	err = NULL;
	switch (pstate->p_expr_kind)
	{
		case EXPR_KIND_NONE:
			FUNC0(false);		/* can't happen */
			break;
		case EXPR_KIND_OTHER:
		case EXPR_KIND_JOIN_ON:
		case EXPR_KIND_JOIN_USING:
		case EXPR_KIND_FROM_SUBSELECT:
		case EXPR_KIND_FROM_FUNCTION:
		case EXPR_KIND_WHERE:
		case EXPR_KIND_POLICY:
		case EXPR_KIND_HAVING:
		case EXPR_KIND_FILTER:
		case EXPR_KIND_WINDOW_PARTITION:
		case EXPR_KIND_WINDOW_ORDER:
		case EXPR_KIND_WINDOW_FRAME_RANGE:
		case EXPR_KIND_WINDOW_FRAME_ROWS:
		case EXPR_KIND_WINDOW_FRAME_GROUPS:
		case EXPR_KIND_SELECT_TARGET:
		case EXPR_KIND_INSERT_TARGET:
		case EXPR_KIND_UPDATE_SOURCE:
		case EXPR_KIND_UPDATE_TARGET:
		case EXPR_KIND_GROUP_BY:
		case EXPR_KIND_ORDER_BY:
		case EXPR_KIND_DISTINCT_ON:
		case EXPR_KIND_LIMIT:
		case EXPR_KIND_OFFSET:
		case EXPR_KIND_RETURNING:
		case EXPR_KIND_VALUES:
		case EXPR_KIND_VALUES_SINGLE:
		case EXPR_KIND_CHECK_CONSTRAINT:
		case EXPR_KIND_DOMAIN_CHECK:
		case EXPR_KIND_FUNCTION_DEFAULT:
		case EXPR_KIND_INDEX_EXPRESSION:
		case EXPR_KIND_INDEX_PREDICATE:
		case EXPR_KIND_ALTER_COL_TRANSFORM:
		case EXPR_KIND_EXECUTE_PARAMETER:
		case EXPR_KIND_TRIGGER_WHEN:
		case EXPR_KIND_PARTITION_EXPRESSION:
		case EXPR_KIND_CALL_ARGUMENT:
		case EXPR_KIND_COPY_WHERE:
		case EXPR_KIND_GENERATED_COLUMN:
			/* okay */
			break;

		case EXPR_KIND_COLUMN_DEFAULT:
			err = FUNC4("cannot use column reference in DEFAULT expression");
			break;
		case EXPR_KIND_PARTITION_BOUND:
			err = FUNC4("cannot use column reference in partition bound expression");
			break;

			/*
			 * There is intentionally no default: case here, so that the
			 * compiler will warn if we add a new ParseExprKind without
			 * extending this switch.  If we do see an unrecognized value at
			 * runtime, the behavior will be the same as for EXPR_KIND_OTHER,
			 * which is sane anyway.
			 */
	}
	if (err)
		FUNC6(ERROR,
				(FUNC7(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC9("%s", err),
				 FUNC21(pstate, cref->location)));

	/*
	 * Give the PreParseColumnRefHook, if any, first shot.  If it returns
	 * non-null then that's all, folks.
	 */
	if (pstate->p_pre_columnref_hook != NULL)
	{
		node = pstate->p_pre_columnref_hook(pstate, cref);
		if (node != NULL)
			return node;
	}

	/*----------
	 * The allowed syntaxes are:
	 *
	 * A		First try to resolve as unqualified column name;
	 *			if no luck, try to resolve as unqualified table name (A.*).
	 * A.B		A is an unqualified table name; B is either a
	 *			column or function name (trying column name first).
	 * A.B.C	schema A, table B, col or func name C.
	 * A.B.C.D	catalog A, schema B, table C, col or func D.
	 * A.*		A is an unqualified table name; means whole-row value.
	 * A.B.*	whole-row value of table B in schema A.
	 * A.B.C.*	whole-row value of table C in schema B in catalog A.
	 *
	 * We do not need to cope with bare "*"; that will only be accepted by
	 * the grammar at the top level of a SELECT list, and transformTargetList
	 * will take care of it before it ever gets here.  Also, "A.*" etc will
	 * be expanded by transformTargetList if they appear at SELECT top level,
	 * so here we are only going to see them as function or operator inputs.
	 *
	 * Currently, if a catalog name is given then it must equal the current
	 * database name; we check it here and then discard it.
	 *----------
	 */
	switch (FUNC15(cref->fields))
	{
		case 1:
			{
				Node	   *field1 = (Node *) FUNC14(cref->fields);

				FUNC0(FUNC1(field1, String));
				colname = FUNC24(field1);

				/* Try to identify as an unqualified column */
				node = FUNC5(pstate, colname, false, cref->location);

				if (node == NULL)
				{
					/*
					 * Not known as a column of any range-table entry.
					 *
					 * Try to find the name as a relation.  Note that only
					 * relations already entered into the rangetable will be
					 * recognized.
					 *
					 * This is a hack for backwards compatibility with
					 * PostQUEL-inspired syntax.  The preferred form now is
					 * "rel.*".
					 */
					rte = FUNC22(pstate, NULL, colname,
											   cref->location,
											   &levels_up);
					if (rte)
						node = FUNC28(pstate, rte,
													cref->location);
				}
				break;
			}
		case 2:
			{
				Node	   *field1 = (Node *) FUNC14(cref->fields);
				Node	   *field2 = (Node *) FUNC17(cref->fields);

				FUNC0(FUNC1(field1, String));
				relname = FUNC24(field1);

				/* Locate the referenced RTE */
				rte = FUNC22(pstate, nspname, relname,
										   cref->location,
										   &levels_up);
				if (rte == NULL)
				{
					crerr = CRERR_NO_RTE;
					break;
				}

				/* Whole-row reference? */
				if (FUNC1(field2, A_Star))
				{
					node = FUNC28(pstate, rte, cref->location);
					break;
				}

				FUNC0(FUNC1(field2, String));
				colname = FUNC24(field2);

				/* Try to identify as a column of the RTE */
				node = FUNC23(pstate, rte, colname, cref->location,
										0, NULL);
				if (node == NULL)
				{
					/* Try it as a function call on the whole row */
					node = FUNC28(pstate, rte, cref->location);
					node = FUNC3(pstate,
											 FUNC16(FUNC20(colname)),
											 FUNC16(node),
											 pstate->p_last_srf,
											 NULL,
											 false,
											 cref->location);
				}
				break;
			}
		case 3:
			{
				Node	   *field1 = (Node *) FUNC14(cref->fields);
				Node	   *field2 = (Node *) FUNC17(cref->fields);
				Node	   *field3 = (Node *) FUNC18(cref->fields);

				FUNC0(FUNC1(field1, String));
				nspname = FUNC24(field1);
				FUNC0(FUNC1(field2, String));
				relname = FUNC24(field2);

				/* Locate the referenced RTE */
				rte = FUNC22(pstate, nspname, relname,
										   cref->location,
										   &levels_up);
				if (rte == NULL)
				{
					crerr = CRERR_NO_RTE;
					break;
				}

				/* Whole-row reference? */
				if (FUNC1(field3, A_Star))
				{
					node = FUNC28(pstate, rte, cref->location);
					break;
				}

				FUNC0(FUNC1(field3, String));
				colname = FUNC24(field3);

				/* Try to identify as a column of the RTE */
				node = FUNC23(pstate, rte, colname, cref->location,
										0, NULL);
				if (node == NULL)
				{
					/* Try it as a function call on the whole row */
					node = FUNC28(pstate, rte, cref->location);
					node = FUNC3(pstate,
											 FUNC16(FUNC20(colname)),
											 FUNC16(node),
											 pstate->p_last_srf,
											 NULL,
											 false,
											 cref->location);
				}
				break;
			}
		case 4:
			{
				Node	   *field1 = (Node *) FUNC14(cref->fields);
				Node	   *field2 = (Node *) FUNC17(cref->fields);
				Node	   *field3 = (Node *) FUNC18(cref->fields);
				Node	   *field4 = (Node *) FUNC13(cref->fields);
				char	   *catname;

				FUNC0(FUNC1(field1, String));
				catname = FUNC24(field1);
				FUNC0(FUNC1(field2, String));
				nspname = FUNC24(field2);
				FUNC0(FUNC1(field3, String));
				relname = FUNC24(field3);

				/*
				 * We check the catalog name and then ignore it.
				 */
				if (FUNC25(catname, FUNC12(MyDatabaseId)) != 0)
				{
					crerr = CRERR_WRONG_DB;
					break;
				}

				/* Locate the referenced RTE */
				rte = FUNC22(pstate, nspname, relname,
										   cref->location,
										   &levels_up);
				if (rte == NULL)
				{
					crerr = CRERR_NO_RTE;
					break;
				}

				/* Whole-row reference? */
				if (FUNC1(field4, A_Star))
				{
					node = FUNC28(pstate, rte, cref->location);
					break;
				}

				FUNC0(FUNC1(field4, String));
				colname = FUNC24(field4);

				/* Try to identify as a column of the RTE */
				node = FUNC23(pstate, rte, colname, cref->location,
										0, NULL);
				if (node == NULL)
				{
					/* Try it as a function call on the whole row */
					node = FUNC28(pstate, rte, cref->location);
					node = FUNC3(pstate,
											 FUNC16(FUNC20(colname)),
											 FUNC16(node),
											 pstate->p_last_srf,
											 NULL,
											 false,
											 cref->location);
				}
				break;
			}
		default:
			crerr = CRERR_TOO_MANY; /* too many dotted names */
			break;
	}

	/*
	 * Now give the PostParseColumnRefHook, if any, a chance.  We pass the
	 * translation-so-far so that it can throw an error if it wishes in the
	 * case that it has a conflicting interpretation of the ColumnRef. (If it
	 * just translates anyway, we'll throw an error, because we can't undo
	 * whatever effects the preceding steps may have had on the pstate.) If it
	 * returns NULL, use the standard translation, or throw a suitable error
	 * if there is none.
	 */
	if (pstate->p_post_columnref_hook != NULL)
	{
		Node	   *hookresult;

		hookresult = pstate->p_post_columnref_hook(pstate, cref, node);
		if (node == NULL)
			node = hookresult;
		else if (hookresult != NULL)
			FUNC6(ERROR,
					(FUNC7(ERRCODE_AMBIGUOUS_COLUMN),
					 FUNC8("column reference \"%s\" is ambiguous",
							FUNC2(cref->fields)),
					 FUNC21(pstate, cref->location)));
	}

	/*
	 * Throw error if no translation found.
	 */
	if (node == NULL)
	{
		switch (crerr)
		{
			case CRERR_NO_COLUMN:
				FUNC10(pstate, relname, colname, cref->location);
				break;
			case CRERR_NO_RTE:
				FUNC11(pstate, FUNC19(nspname, relname,
													 cref->location));
				break;
			case CRERR_WRONG_DB:
				FUNC6(ERROR,
						(FUNC7(ERRCODE_FEATURE_NOT_SUPPORTED),
						 FUNC8("cross-database references are not implemented: %s",
								FUNC2(cref->fields)),
						 FUNC21(pstate, cref->location)));
				break;
			case CRERR_TOO_MANY:
				FUNC6(ERROR,
						(FUNC7(ERRCODE_SYNTAX_ERROR),
						 FUNC8("improper qualified name (too many dotted names): %s",
								FUNC2(cref->fields)),
						 FUNC21(pstate, cref->location)));
				break;
		}
	}

	return node;
}