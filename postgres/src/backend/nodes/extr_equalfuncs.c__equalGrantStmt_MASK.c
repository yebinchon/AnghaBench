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
typedef  int /*<<< orphan*/  GrantStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  behavior ; 
 int /*<<< orphan*/  grant_option ; 
 int /*<<< orphan*/  grantees ; 
 int /*<<< orphan*/  is_grant ; 
 int /*<<< orphan*/  objects ; 
 int /*<<< orphan*/  objtype ; 
 int /*<<< orphan*/  privileges ; 
 int /*<<< orphan*/  targtype ; 

__attribute__((used)) static bool
FUNC2(const GrantStmt *a, const GrantStmt *b)
{
	FUNC1(is_grant);
	FUNC1(targtype);
	FUNC1(objtype);
	FUNC0(objects);
	FUNC0(privileges);
	FUNC0(grantees);
	FUNC1(grant_option);
	FUNC1(behavior);

	return true;
}