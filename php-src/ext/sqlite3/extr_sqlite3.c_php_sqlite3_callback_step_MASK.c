#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_3__ {int /*<<< orphan*/  step; int /*<<< orphan*/  astep; } ;
typedef  TYPE_1__ php_sqlite3_func ;
struct TYPE_4__ {int /*<<< orphan*/  row_count; } ;
typedef  TYPE_2__ php_sqlite3_agg_context ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(sqlite3_context *context, int argc, sqlite3_value **argv) /* {{{ */
{
	php_sqlite3_func *func = (php_sqlite3_func *)FUNC2(context);
	php_sqlite3_agg_context *agg_context = (php_sqlite3_agg_context *)FUNC0(context, sizeof(php_sqlite3_agg_context));

	agg_context->row_count++;

	FUNC1(&func->astep, &func->step, argc, argv, context, 1);
}