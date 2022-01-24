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
typedef  int /*<<< orphan*/  DefElem ;

/* Variables and functions */
 int /*<<< orphan*/  DefElemAction ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arg ; 
 int /*<<< orphan*/  defaction ; 
 int /*<<< orphan*/  defname ; 
 int /*<<< orphan*/  defnamespace ; 
 int /*<<< orphan*/  location ; 

__attribute__((used)) static void
FUNC5(StringInfo str, const DefElem *node)
{
	FUNC3("DEFELEM");

	FUNC4(defnamespace);
	FUNC4(defname);
	FUNC2(arg);
	FUNC0(defaction, DefElemAction);
	FUNC1(location);
}