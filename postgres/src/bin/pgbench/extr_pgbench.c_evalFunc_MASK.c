#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  PgBenchValue ;
typedef  int /*<<< orphan*/  PgBenchFunction ;
typedef  int /*<<< orphan*/  PgBenchExprLink ;
typedef  int /*<<< orphan*/  CState ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3(CState *st,
		 PgBenchFunction func, PgBenchExprLink *args, PgBenchValue *retval)
{
	if (FUNC2(func))
		return FUNC0(st, func, args, retval);
	else
		return FUNC1(st, func, args, retval);
}