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
typedef  int /*<<< orphan*/  TableFunc ;
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  colcollations ; 
 int /*<<< orphan*/  coldefexprs ; 
 int /*<<< orphan*/  colexprs ; 
 int /*<<< orphan*/  colnames ; 
 int /*<<< orphan*/  coltypes ; 
 int /*<<< orphan*/  coltypmods ; 
 int /*<<< orphan*/  docexpr ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  notnulls ; 
 int /*<<< orphan*/  ns_names ; 
 int /*<<< orphan*/  ns_uris ; 
 int /*<<< orphan*/  ordinalitycol ; 
 int /*<<< orphan*/  rowexpr ; 

__attribute__((used)) static void
FUNC5(StringInfo str, const TableFunc *node)
{
	FUNC4("TABLEFUNC");

	FUNC3(ns_uris);
	FUNC3(ns_names);
	FUNC3(docexpr);
	FUNC3(rowexpr);
	FUNC3(colnames);
	FUNC3(coltypes);
	FUNC3(coltypmods);
	FUNC3(colcollations);
	FUNC3(colexprs);
	FUNC3(coldefexprs);
	FUNC0(notnulls);
	FUNC1(ordinalitycol);
	FUNC2(location);
}