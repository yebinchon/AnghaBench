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
typedef  int /*<<< orphan*/  AppendRelInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  child_relid ; 
 int /*<<< orphan*/  child_reltype ; 
 int /*<<< orphan*/  parent_relid ; 
 int /*<<< orphan*/  parent_reloid ; 
 int /*<<< orphan*/  parent_reltype ; 
 int /*<<< orphan*/  translated_vars ; 

__attribute__((used)) static void
FUNC4(StringInfo str, const AppendRelInfo *node)
{
	FUNC1("APPENDRELINFO");

	FUNC3(parent_relid);
	FUNC3(child_relid);
	FUNC2(parent_reltype);
	FUNC2(child_reltype);
	FUNC0(translated_vars);
	FUNC2(parent_reloid);
}