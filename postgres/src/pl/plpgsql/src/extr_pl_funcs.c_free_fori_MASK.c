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
struct TYPE_3__ {int /*<<< orphan*/  body; int /*<<< orphan*/  step; int /*<<< orphan*/  upper; int /*<<< orphan*/  lower; } ;
typedef  TYPE_1__ PLpgSQL_stmt_fori ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(PLpgSQL_stmt_fori *stmt)
{
	FUNC0(stmt->lower);
	FUNC0(stmt->upper);
	FUNC0(stmt->step);
	FUNC1(stmt->body);
}