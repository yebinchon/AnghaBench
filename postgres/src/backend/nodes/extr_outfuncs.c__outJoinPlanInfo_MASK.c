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
typedef  int /*<<< orphan*/  Plan ;
typedef  int /*<<< orphan*/  Join ;

/* Variables and functions */
 int /*<<< orphan*/  JoinType ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  inner_unique ; 
 int /*<<< orphan*/  joinqual ; 
 int /*<<< orphan*/  jointype ; 

__attribute__((used)) static void
FUNC4(StringInfo str, const Join *node)
{
	FUNC3(str, (const Plan *) node);

	FUNC1(jointype, JoinType);
	FUNC0(inner_unique);
	FUNC2(joinqual);
}