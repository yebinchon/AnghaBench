#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ bound; int /*<<< orphan*/  zv; } ;
struct TYPE_10__ {TYPE_1__* m; TYPE_2__* data; } ;
struct TYPE_9__ {unsigned int field_count; TYPE_5__* result_bind; int /*<<< orphan*/  stmt_id; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* free_result_bind ) (TYPE_3__* const,TYPE_5__*) ;} ;
typedef  TYPE_2__ MYSQLND_STMT_DATA ;
typedef  TYPE_3__ MYSQLND_STMT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,TYPE_5__*,...) ; 
 int /*<<< orphan*/  DBG_VOID_RETURN ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__* const,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(MYSQLND_STMT * const s)
{
	MYSQLND_STMT_DATA * stmt = s? s->data : NULL;
	unsigned int i;

	FUNC0("mysqlnd_stmt_separate_result_bind");
	if (!stmt) {
		DBG_VOID_RETURN;
	}
	FUNC1("stmt=%lu result_bind=%p field_count=%u", stmt->stmt_id, stmt->result_bind, stmt->field_count);

	if (!stmt->result_bind) {
		DBG_VOID_RETURN;
	}

	/*
	  Because only the bound variables can point to our internal buffers, then
	  separate or free only them. Free is possible because the user could have
	  lost reference.
	*/
	for (i = 0; i < stmt->field_count; i++) {
		/* Let's try with no cache */
		if (stmt->result_bind[i].bound == TRUE) {
			FUNC1("%u has refcount=%u", i, FUNC3(stmt->result_bind[i].zv)? FUNC2(stmt->result_bind[i].zv) : 0);
			FUNC5(&stmt->result_bind[i].zv);
		}
	}

	s->m->free_result_bind(s, stmt->result_bind);
	stmt->result_bind = NULL;

	DBG_VOID_RETURN;
}