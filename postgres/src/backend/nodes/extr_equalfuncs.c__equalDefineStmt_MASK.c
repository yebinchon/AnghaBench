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
typedef  int /*<<< orphan*/  DefineStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  definition ; 
 int /*<<< orphan*/  defnames ; 
 int /*<<< orphan*/  if_not_exists ; 
 int /*<<< orphan*/  kind ; 
 int /*<<< orphan*/  oldstyle ; 
 int /*<<< orphan*/  replace ; 

__attribute__((used)) static bool
FUNC2(const DefineStmt *a, const DefineStmt *b)
{
	FUNC1(kind);
	FUNC1(oldstyle);
	FUNC0(defnames);
	FUNC0(args);
	FUNC0(definition);
	FUNC1(if_not_exists);
	FUNC1(replace);

	return true;
}