#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_40__   TYPE_7__ ;
typedef  struct TYPE_39__   TYPE_2__ ;
typedef  struct TYPE_38__   TYPE_1__ ;

/* Type definitions */
struct TYPE_40__ {int /*<<< orphan*/  (* stmt_end ) (TYPE_2__*,TYPE_1__*) ;int /*<<< orphan*/  (* stmt_beg ) (TYPE_2__*,TYPE_1__*) ;} ;
struct TYPE_39__ {TYPE_1__* err_stmt; } ;
struct TYPE_38__ {int cmd_type; } ;
typedef  int /*<<< orphan*/  PLpgSQL_stmt_while ;
typedef  int /*<<< orphan*/  PLpgSQL_stmt_set ;
typedef  int /*<<< orphan*/  PLpgSQL_stmt_rollback ;
typedef  int /*<<< orphan*/  PLpgSQL_stmt_return_query ;
typedef  int /*<<< orphan*/  PLpgSQL_stmt_return_next ;
typedef  int /*<<< orphan*/  PLpgSQL_stmt_return ;
typedef  int /*<<< orphan*/  PLpgSQL_stmt_raise ;
typedef  int /*<<< orphan*/  PLpgSQL_stmt_perform ;
typedef  int /*<<< orphan*/  PLpgSQL_stmt_open ;
typedef  int /*<<< orphan*/  PLpgSQL_stmt_loop ;
typedef  int /*<<< orphan*/  PLpgSQL_stmt_if ;
typedef  int /*<<< orphan*/  PLpgSQL_stmt_getdiag ;
typedef  int /*<<< orphan*/  PLpgSQL_stmt_fors ;
typedef  int /*<<< orphan*/  PLpgSQL_stmt_fori ;
typedef  int /*<<< orphan*/  PLpgSQL_stmt_foreach_a ;
typedef  int /*<<< orphan*/  PLpgSQL_stmt_forc ;
typedef  int /*<<< orphan*/  PLpgSQL_stmt_fetch ;
typedef  int /*<<< orphan*/  PLpgSQL_stmt_exit ;
typedef  int /*<<< orphan*/  PLpgSQL_stmt_execsql ;
typedef  int /*<<< orphan*/  PLpgSQL_stmt_dynfors ;
typedef  int /*<<< orphan*/  PLpgSQL_stmt_dynexecute ;
typedef  int /*<<< orphan*/  PLpgSQL_stmt_commit ;
typedef  int /*<<< orphan*/  PLpgSQL_stmt_close ;
typedef  int /*<<< orphan*/  PLpgSQL_stmt_case ;
typedef  int /*<<< orphan*/  PLpgSQL_stmt_call ;
typedef  int /*<<< orphan*/  PLpgSQL_stmt_block ;
typedef  int /*<<< orphan*/  PLpgSQL_stmt_assign ;
typedef  int /*<<< orphan*/  PLpgSQL_stmt_assert ;
typedef  TYPE_1__ PLpgSQL_stmt ;
typedef  TYPE_2__ PLpgSQL_execstate ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ERROR ; 
#define  PLPGSQL_STMT_ASSERT 155 
#define  PLPGSQL_STMT_ASSIGN 154 
#define  PLPGSQL_STMT_BLOCK 153 
#define  PLPGSQL_STMT_CALL 152 
#define  PLPGSQL_STMT_CASE 151 
#define  PLPGSQL_STMT_CLOSE 150 
#define  PLPGSQL_STMT_COMMIT 149 
#define  PLPGSQL_STMT_DYNEXECUTE 148 
#define  PLPGSQL_STMT_DYNFORS 147 
#define  PLPGSQL_STMT_EXECSQL 146 
#define  PLPGSQL_STMT_EXIT 145 
#define  PLPGSQL_STMT_FETCH 144 
#define  PLPGSQL_STMT_FORC 143 
#define  PLPGSQL_STMT_FOREACH_A 142 
#define  PLPGSQL_STMT_FORI 141 
#define  PLPGSQL_STMT_FORS 140 
#define  PLPGSQL_STMT_GETDIAG 139 
#define  PLPGSQL_STMT_IF 138 
#define  PLPGSQL_STMT_LOOP 137 
#define  PLPGSQL_STMT_OPEN 136 
#define  PLPGSQL_STMT_PERFORM 135 
#define  PLPGSQL_STMT_RAISE 134 
#define  PLPGSQL_STMT_RETURN 133 
#define  PLPGSQL_STMT_RETURN_NEXT 132 
#define  PLPGSQL_STMT_RETURN_QUERY 131 
#define  PLPGSQL_STMT_ROLLBACK 130 
#define  PLPGSQL_STMT_SET 129 
#define  PLPGSQL_STMT_WHILE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC13 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC14 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC15 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC16 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC17 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC18 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC19 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC20 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC21 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC22 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC23 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC24 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC25 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC26 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC27 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC28 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC29 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_7__** plpgsql_plugin_ptr ; 
 int /*<<< orphan*/  FUNC30 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_2__*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC32(PLpgSQL_execstate *estate, PLpgSQL_stmt *stmt)
{
	PLpgSQL_stmt *save_estmt;
	int			rc = -1;

	save_estmt = estate->err_stmt;
	estate->err_stmt = stmt;

	/* Let the plugin know that we are about to execute this statement */
	if (*plpgsql_plugin_ptr && (*plpgsql_plugin_ptr)->stmt_beg)
		((*plpgsql_plugin_ptr)->stmt_beg) (estate, stmt);

	FUNC0();

	switch (stmt->cmd_type)
	{
		case PLPGSQL_STMT_BLOCK:
			rc = FUNC4(estate, (PLpgSQL_stmt_block *) stmt);
			break;

		case PLPGSQL_STMT_ASSIGN:
			rc = FUNC3(estate, (PLpgSQL_stmt_assign *) stmt);
			break;

		case PLPGSQL_STMT_PERFORM:
			rc = FUNC22(estate, (PLpgSQL_stmt_perform *) stmt);
			break;

		case PLPGSQL_STMT_CALL:
			rc = FUNC5(estate, (PLpgSQL_stmt_call *) stmt);
			break;

		case PLPGSQL_STMT_GETDIAG:
			rc = FUNC18(estate, (PLpgSQL_stmt_getdiag *) stmt);
			break;

		case PLPGSQL_STMT_IF:
			rc = FUNC19(estate, (PLpgSQL_stmt_if *) stmt);
			break;

		case PLPGSQL_STMT_CASE:
			rc = FUNC6(estate, (PLpgSQL_stmt_case *) stmt);
			break;

		case PLPGSQL_STMT_LOOP:
			rc = FUNC20(estate, (PLpgSQL_stmt_loop *) stmt);
			break;

		case PLPGSQL_STMT_WHILE:
			rc = FUNC29(estate, (PLpgSQL_stmt_while *) stmt);
			break;

		case PLPGSQL_STMT_FORI:
			rc = FUNC16(estate, (PLpgSQL_stmt_fori *) stmt);
			break;

		case PLPGSQL_STMT_FORS:
			rc = FUNC17(estate, (PLpgSQL_stmt_fors *) stmt);
			break;

		case PLPGSQL_STMT_FORC:
			rc = FUNC14(estate, (PLpgSQL_stmt_forc *) stmt);
			break;

		case PLPGSQL_STMT_FOREACH_A:
			rc = FUNC15(estate, (PLpgSQL_stmt_foreach_a *) stmt);
			break;

		case PLPGSQL_STMT_EXIT:
			rc = FUNC12(estate, (PLpgSQL_stmt_exit *) stmt);
			break;

		case PLPGSQL_STMT_RETURN:
			rc = FUNC24(estate, (PLpgSQL_stmt_return *) stmt);
			break;

		case PLPGSQL_STMT_RETURN_NEXT:
			rc = FUNC25(estate, (PLpgSQL_stmt_return_next *) stmt);
			break;

		case PLPGSQL_STMT_RETURN_QUERY:
			rc = FUNC26(estate, (PLpgSQL_stmt_return_query *) stmt);
			break;

		case PLPGSQL_STMT_RAISE:
			rc = FUNC23(estate, (PLpgSQL_stmt_raise *) stmt);
			break;

		case PLPGSQL_STMT_ASSERT:
			rc = FUNC2(estate, (PLpgSQL_stmt_assert *) stmt);
			break;

		case PLPGSQL_STMT_EXECSQL:
			rc = FUNC11(estate, (PLpgSQL_stmt_execsql *) stmt);
			break;

		case PLPGSQL_STMT_DYNEXECUTE:
			rc = FUNC9(estate, (PLpgSQL_stmt_dynexecute *) stmt);
			break;

		case PLPGSQL_STMT_DYNFORS:
			rc = FUNC10(estate, (PLpgSQL_stmt_dynfors *) stmt);
			break;

		case PLPGSQL_STMT_OPEN:
			rc = FUNC21(estate, (PLpgSQL_stmt_open *) stmt);
			break;

		case PLPGSQL_STMT_FETCH:
			rc = FUNC13(estate, (PLpgSQL_stmt_fetch *) stmt);
			break;

		case PLPGSQL_STMT_CLOSE:
			rc = FUNC7(estate, (PLpgSQL_stmt_close *) stmt);
			break;

		case PLPGSQL_STMT_COMMIT:
			rc = FUNC8(estate, (PLpgSQL_stmt_commit *) stmt);
			break;

		case PLPGSQL_STMT_ROLLBACK:
			rc = FUNC27(estate, (PLpgSQL_stmt_rollback *) stmt);
			break;

		case PLPGSQL_STMT_SET:
			rc = FUNC28(estate, (PLpgSQL_stmt_set *) stmt);
			break;

		default:
			estate->err_stmt = save_estmt;
			FUNC1(ERROR, "unrecognized cmd_type: %d", stmt->cmd_type);
	}

	/* Let the plugin know that we have finished executing this statement */
	if (*plpgsql_plugin_ptr && (*plpgsql_plugin_ptr)->stmt_end)
		((*plpgsql_plugin_ptr)->stmt_end) (estate, stmt);

	estate->err_stmt = save_estmt;

	return rc;
}