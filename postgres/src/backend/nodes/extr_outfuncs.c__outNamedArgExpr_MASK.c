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
typedef  int /*<<< orphan*/  NamedArgExpr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arg ; 
 int /*<<< orphan*/  argnumber ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  name ; 

__attribute__((used)) static void
FUNC5(StringInfo str, const NamedArgExpr *node)
{
	FUNC3("NAMEDARGEXPR");

	FUNC2(arg);
	FUNC4(name);
	FUNC0(argnumber);
	FUNC1(location);
}