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
typedef  int /*<<< orphan*/  CreateDomainStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  collClause ; 
 int /*<<< orphan*/  constraints ; 
 int /*<<< orphan*/  domainname ; 
 int /*<<< orphan*/  typeName ; 

__attribute__((used)) static bool
FUNC1(const CreateDomainStmt *a, const CreateDomainStmt *b)
{
	FUNC0(domainname);
	FUNC0(typeName);
	FUNC0(collClause);
	FUNC0(constraints);

	return true;
}