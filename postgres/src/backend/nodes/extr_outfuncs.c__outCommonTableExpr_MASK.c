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
typedef  int /*<<< orphan*/  CommonTableExpr ;

/* Variables and functions */
 int /*<<< orphan*/  CTEMaterialize ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aliascolnames ; 
 int /*<<< orphan*/  ctecolcollations ; 
 int /*<<< orphan*/  ctecolnames ; 
 int /*<<< orphan*/  ctecoltypes ; 
 int /*<<< orphan*/  ctecoltypmods ; 
 int /*<<< orphan*/  ctematerialized ; 
 int /*<<< orphan*/  ctename ; 
 int /*<<< orphan*/  ctequery ; 
 int /*<<< orphan*/  cterecursive ; 
 int /*<<< orphan*/  cterefcount ; 
 int /*<<< orphan*/  location ; 

__attribute__((used)) static void
FUNC7(StringInfo str, const CommonTableExpr *node)
{
	FUNC5("COMMONTABLEEXPR");

	FUNC6(ctename);
	FUNC4(aliascolnames);
	FUNC1(ctematerialized, CTEMaterialize);
	FUNC4(ctequery);
	FUNC3(location);
	FUNC0(cterecursive);
	FUNC2(cterefcount);
	FUNC4(ctecolnames);
	FUNC4(ctecoltypes);
	FUNC4(ctecoltypmods);
	FUNC4(ctecolcollations);
}