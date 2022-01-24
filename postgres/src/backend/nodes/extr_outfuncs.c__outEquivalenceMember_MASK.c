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
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  EquivalenceMember ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  em_datatype ; 
 int /*<<< orphan*/  em_expr ; 
 int /*<<< orphan*/  em_is_child ; 
 int /*<<< orphan*/  em_is_const ; 
 int /*<<< orphan*/  em_nullable_relids ; 
 int /*<<< orphan*/  em_relids ; 

__attribute__((used)) static void
FUNC5(StringInfo str, const EquivalenceMember *node)
{
	FUNC3("EQUIVALENCEMEMBER");

	FUNC2(em_expr);
	FUNC0(em_relids);
	FUNC0(em_nullable_relids);
	FUNC1(em_is_const);
	FUNC1(em_is_child);
	FUNC4(em_datatype);
}