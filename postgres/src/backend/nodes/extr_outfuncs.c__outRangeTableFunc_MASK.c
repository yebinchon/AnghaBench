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
typedef  int /*<<< orphan*/  RangeTableFunc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  alias ; 
 int /*<<< orphan*/  columns ; 
 int /*<<< orphan*/  docexpr ; 
 int /*<<< orphan*/  lateral ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  namespaces ; 
 int /*<<< orphan*/  rowexpr ; 

__attribute__((used)) static void
FUNC4(StringInfo str, const RangeTableFunc *node)
{
	FUNC3("RANGETABLEFUNC");

	FUNC0(lateral);
	FUNC2(docexpr);
	FUNC2(rowexpr);
	FUNC2(namespaces);
	FUNC2(columns);
	FUNC2(alias);
	FUNC1(location);
}