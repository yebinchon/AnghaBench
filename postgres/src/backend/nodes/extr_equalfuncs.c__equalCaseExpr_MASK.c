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
typedef  int /*<<< orphan*/  CaseExpr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arg ; 
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  casecollid ; 
 int /*<<< orphan*/  casetype ; 
 int /*<<< orphan*/  defresult ; 
 int /*<<< orphan*/  location ; 

__attribute__((used)) static bool
FUNC3(const CaseExpr *a, const CaseExpr *b)
{
	FUNC2(casetype);
	FUNC2(casecollid);
	FUNC1(arg);
	FUNC1(args);
	FUNC1(defresult);
	FUNC0(location);

	return true;
}