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
typedef  int /*<<< orphan*/  CreateFunctionStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  funcname ; 
 int /*<<< orphan*/  is_procedure ; 
 int /*<<< orphan*/  options ; 
 int /*<<< orphan*/  parameters ; 
 int /*<<< orphan*/  replace ; 
 int /*<<< orphan*/  returnType ; 

__attribute__((used)) static bool
FUNC2(const CreateFunctionStmt *a, const CreateFunctionStmt *b)
{
	FUNC1(is_procedure);
	FUNC1(replace);
	FUNC0(funcname);
	FUNC0(parameters);
	FUNC0(returnType);
	FUNC0(options);

	return true;
}