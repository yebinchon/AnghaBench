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
typedef  int /*<<< orphan*/  NullTest ;

/* Variables and functions */
 int /*<<< orphan*/  NullTestType ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  arg ; 
 int /*<<< orphan*/  argisrow ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  nulltesttype ; 

__attribute__((used)) static void
FUNC5(StringInfo str, const NullTest *node)
{
	FUNC4("NULLTEST");

	FUNC3(arg);
	FUNC1(nulltesttype, NullTestType);
	FUNC0(argisrow);
	FUNC2(location);
}