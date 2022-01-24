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
typedef  int /*<<< orphan*/  MultiAssignRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  colno ; 
 int /*<<< orphan*/  ncolumns ; 
 int /*<<< orphan*/  source ; 

__attribute__((used)) static void
FUNC3(StringInfo str, const MultiAssignRef *node)
{
	FUNC2("MULTIASSIGNREF");

	FUNC1(source);
	FUNC0(colno);
	FUNC0(ncolumns);
}