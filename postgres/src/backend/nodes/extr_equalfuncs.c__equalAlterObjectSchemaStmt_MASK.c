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
typedef  int /*<<< orphan*/  AlterObjectSchemaStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  missing_ok ; 
 int /*<<< orphan*/  newschema ; 
 int /*<<< orphan*/  object ; 
 int /*<<< orphan*/  objectType ; 
 int /*<<< orphan*/  relation ; 

__attribute__((used)) static bool
FUNC3(const AlterObjectSchemaStmt *a, const AlterObjectSchemaStmt *b)
{
	FUNC1(objectType);
	FUNC0(relation);
	FUNC0(object);
	FUNC2(newschema);
	FUNC1(missing_ok);

	return true;
}