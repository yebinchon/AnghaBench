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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
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

__attribute__((used)) static bool
FUNC4(const TableFunc *a, const TableFunc *b)
{
	FUNC2(ns_uris);
	FUNC2(ns_names);
	FUNC2(docexpr);
	FUNC2(rowexpr);
	FUNC2(colnames);
	FUNC2(coltypes);
	FUNC2(coltypmods);
	FUNC2(colcollations);
	FUNC2(colexprs);
	FUNC2(coldefexprs);
	FUNC0(notnulls);
	FUNC3(ordinalitycol);
	FUNC1(location);

	return true;
}