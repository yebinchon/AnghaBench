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
typedef  int /*<<< orphan*/  CommonTableExpr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
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

__attribute__((used)) static bool
FUNC4(const CommonTableExpr *a, const CommonTableExpr *b)
{
	FUNC3(ctename);
	FUNC1(aliascolnames);
	FUNC2(ctematerialized);
	FUNC1(ctequery);
	FUNC0(location);
	FUNC2(cterecursive);
	FUNC2(cterefcount);
	FUNC1(ctecolnames);
	FUNC1(ctecoltypes);
	FUNC1(ctecoltypmods);
	FUNC1(ctecolcollations);

	return true;
}