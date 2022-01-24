#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * datums; } ;
struct TYPE_6__ {size_t varno; int /*<<< orphan*/  expr; } ;
typedef  TYPE_1__ PLpgSQL_stmt_assign ;
typedef  TYPE_2__ PLpgSQL_execstate ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PLPGSQL_RC_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(PLpgSQL_execstate *estate, PLpgSQL_stmt_assign *stmt)
{
	FUNC0(stmt->varno >= 0);

	FUNC1(estate, estate->datums[stmt->varno], stmt->expr);

	return PLPGSQL_RC_OK;
}