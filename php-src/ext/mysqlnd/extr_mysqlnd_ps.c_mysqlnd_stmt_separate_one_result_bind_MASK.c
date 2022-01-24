#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ bound; int /*<<< orphan*/  zv; } ;
struct TYPE_6__ {TYPE_1__* data; } ;
struct TYPE_5__ {TYPE_4__* result_bind; int /*<<< orphan*/  field_count; int /*<<< orphan*/  stmt_id; } ;
typedef  TYPE_1__ MYSQLND_STMT_DATA ;
typedef  TYPE_2__ MYSQLND_STMT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int const,TYPE_4__*,...) ; 
 int /*<<< orphan*/  DBG_VOID_RETURN ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(MYSQLND_STMT * const s, const unsigned int param_no)
{
	MYSQLND_STMT_DATA * stmt = s? s->data : NULL;
	FUNC0("mysqlnd_stmt_separate_one_result_bind");
	if (!stmt) {
		DBG_VOID_RETURN;
	}
	FUNC1("stmt=%lu result_bind=%p field_count=%u param_no=%u", stmt->stmt_id, stmt->result_bind, stmt->field_count, param_no);

	if (!stmt->result_bind) {
		DBG_VOID_RETURN;
	}

	/*
	  Because only the bound variables can point to our internal buffers, then
	  separate or free only them. Free is possible because the user could have
	  lost reference.
	*/
	/* Let's try with no cache */
	if (stmt->result_bind[param_no].bound == TRUE) {
		FUNC1("%u has refcount=%u", param_no, FUNC3(stmt->result_bind[param_no].zv)? FUNC2(stmt->result_bind[param_no].zv) : 0);
		FUNC4(&stmt->result_bind[param_no].zv);
	}

	DBG_VOID_RETURN;
}