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
typedef  int /*<<< orphan*/  CreateCastStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  func ; 
 int /*<<< orphan*/  inout ; 
 int /*<<< orphan*/  sourcetype ; 
 int /*<<< orphan*/  targettype ; 

__attribute__((used)) static bool
FUNC2(const CreateCastStmt *a, const CreateCastStmt *b)
{
	FUNC0(sourcetype);
	FUNC0(targettype);
	FUNC0(func);
	FUNC1(context);
	FUNC1(inout);

	return true;
}