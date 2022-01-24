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
typedef  int /*<<< orphan*/  CreateOpClassStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  amname ; 
 int /*<<< orphan*/  datatype ; 
 int /*<<< orphan*/  isDefault ; 
 int /*<<< orphan*/  items ; 
 int /*<<< orphan*/  opclassname ; 
 int /*<<< orphan*/  opfamilyname ; 

__attribute__((used)) static bool
FUNC3(const CreateOpClassStmt *a, const CreateOpClassStmt *b)
{
	FUNC0(opclassname);
	FUNC0(opfamilyname);
	FUNC2(amname);
	FUNC0(datatype);
	FUNC0(items);
	FUNC1(isDefault);

	return true;
}