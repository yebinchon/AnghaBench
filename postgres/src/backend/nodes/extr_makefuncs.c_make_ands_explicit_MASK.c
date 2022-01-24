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
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/ * NIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

Expr *
FUNC4(List *andclauses)
{
	if (andclauses == NIL)
		return (Expr *) FUNC2(true, false);
	else if (FUNC1(andclauses) == 1)
		return (Expr *) FUNC0(andclauses);
	else
		return FUNC3(andclauses);
}