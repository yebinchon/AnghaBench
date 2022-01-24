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
typedef  int /*<<< orphan*/  RowCompareExpr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inputcollids ; 
 int /*<<< orphan*/  largs ; 
 int /*<<< orphan*/  opfamilies ; 
 int /*<<< orphan*/  opnos ; 
 int /*<<< orphan*/  rargs ; 
 int /*<<< orphan*/  rctype ; 

__attribute__((used)) static bool
FUNC2(const RowCompareExpr *a, const RowCompareExpr *b)
{
	FUNC1(rctype);
	FUNC0(opnos);
	FUNC0(opfamilies);
	FUNC0(inputcollids);
	FUNC0(largs);
	FUNC0(rargs);

	return true;
}