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
typedef  int /*<<< orphan*/  CreateTransformStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fromsql ; 
 int /*<<< orphan*/  lang ; 
 int /*<<< orphan*/  replace ; 
 int /*<<< orphan*/  tosql ; 
 int /*<<< orphan*/  type_name ; 

__attribute__((used)) static bool
FUNC3(const CreateTransformStmt *a, const CreateTransformStmt *b)
{
	FUNC1(replace);
	FUNC0(type_name);
	FUNC2(lang);
	FUNC0(fromsql);
	FUNC0(tosql);

	return true;
}