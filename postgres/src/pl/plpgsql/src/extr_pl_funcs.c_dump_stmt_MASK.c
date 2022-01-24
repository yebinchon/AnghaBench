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
struct TYPE_3__ {int lineno; int cmd_type; } ;
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

/* Variables and functions */
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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC29 (char*,int) ; 

__attribute__((used)) static void
FUNC30(PLpgSQL_stmt *stmt)
{
	FUNC29("%3d:", stmt->lineno);
	switch (stmt->cmd_type)
	{
		case PLPGSQL_STMT_BLOCK:
			FUNC2((PLpgSQL_stmt_block *) stmt);
			break;
		case PLPGSQL_STMT_ASSIGN:
			FUNC1((PLpgSQL_stmt_assign *) stmt);
			break;
		case PLPGSQL_STMT_IF:
			FUNC17((PLpgSQL_stmt_if *) stmt);
			break;
		case PLPGSQL_STMT_CASE:
			FUNC4((PLpgSQL_stmt_case *) stmt);
			break;
		case PLPGSQL_STMT_LOOP:
			FUNC18((PLpgSQL_stmt_loop *) stmt);
			break;
		case PLPGSQL_STMT_WHILE:
			FUNC27((PLpgSQL_stmt_while *) stmt);
			break;
		case PLPGSQL_STMT_FORI:
			FUNC14((PLpgSQL_stmt_fori *) stmt);
			break;
		case PLPGSQL_STMT_FORS:
			FUNC15((PLpgSQL_stmt_fors *) stmt);
			break;
		case PLPGSQL_STMT_FORC:
			FUNC12((PLpgSQL_stmt_forc *) stmt);
			break;
		case PLPGSQL_STMT_FOREACH_A:
			FUNC13((PLpgSQL_stmt_foreach_a *) stmt);
			break;
		case PLPGSQL_STMT_EXIT:
			FUNC10((PLpgSQL_stmt_exit *) stmt);
			break;
		case PLPGSQL_STMT_RETURN:
			FUNC22((PLpgSQL_stmt_return *) stmt);
			break;
		case PLPGSQL_STMT_RETURN_NEXT:
			FUNC23((PLpgSQL_stmt_return_next *) stmt);
			break;
		case PLPGSQL_STMT_RETURN_QUERY:
			FUNC24((PLpgSQL_stmt_return_query *) stmt);
			break;
		case PLPGSQL_STMT_RAISE:
			FUNC21((PLpgSQL_stmt_raise *) stmt);
			break;
		case PLPGSQL_STMT_ASSERT:
			FUNC0((PLpgSQL_stmt_assert *) stmt);
			break;
		case PLPGSQL_STMT_EXECSQL:
			FUNC9((PLpgSQL_stmt_execsql *) stmt);
			break;
		case PLPGSQL_STMT_DYNEXECUTE:
			FUNC7((PLpgSQL_stmt_dynexecute *) stmt);
			break;
		case PLPGSQL_STMT_DYNFORS:
			FUNC8((PLpgSQL_stmt_dynfors *) stmt);
			break;
		case PLPGSQL_STMT_GETDIAG:
			FUNC16((PLpgSQL_stmt_getdiag *) stmt);
			break;
		case PLPGSQL_STMT_OPEN:
			FUNC19((PLpgSQL_stmt_open *) stmt);
			break;
		case PLPGSQL_STMT_FETCH:
			FUNC11((PLpgSQL_stmt_fetch *) stmt);
			break;
		case PLPGSQL_STMT_CLOSE:
			FUNC5((PLpgSQL_stmt_close *) stmt);
			break;
		case PLPGSQL_STMT_PERFORM:
			FUNC20((PLpgSQL_stmt_perform *) stmt);
			break;
		case PLPGSQL_STMT_CALL:
			FUNC3((PLpgSQL_stmt_call *) stmt);
			break;
		case PLPGSQL_STMT_COMMIT:
			FUNC6((PLpgSQL_stmt_commit *) stmt);
			break;
		case PLPGSQL_STMT_ROLLBACK:
			FUNC25((PLpgSQL_stmt_rollback *) stmt);
			break;
		case PLPGSQL_STMT_SET:
			FUNC26((PLpgSQL_stmt_set *) stmt);
			break;
		default:
			FUNC28(ERROR, "unrecognized cmd_type: %d", stmt->cmd_type);
			break;
	}
}