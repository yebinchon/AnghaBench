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
typedef  int /*<<< orphan*/  MinMaxExpr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  inputcollid ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  minmaxcollid ; 
 int /*<<< orphan*/  minmaxtype ; 
 int /*<<< orphan*/  op ; 

__attribute__((used)) static bool
FUNC3(const MinMaxExpr *a, const MinMaxExpr *b)
{
	FUNC2(minmaxtype);
	FUNC2(minmaxcollid);
	FUNC2(inputcollid);
	FUNC2(op);
	FUNC1(args);
	FUNC0(location);

	return true;
}