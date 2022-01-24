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
typedef  int /*<<< orphan*/  AlterSubscriptionStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conninfo ; 
 int /*<<< orphan*/  kind ; 
 int /*<<< orphan*/  options ; 
 int /*<<< orphan*/  publication ; 
 int /*<<< orphan*/  subname ; 

__attribute__((used)) static bool
FUNC3(const AlterSubscriptionStmt *a,
							const AlterSubscriptionStmt *b)
{
	FUNC1(kind);
	FUNC2(subname);
	FUNC2(conninfo);
	FUNC0(publication);
	FUNC0(options);

	return true;
}