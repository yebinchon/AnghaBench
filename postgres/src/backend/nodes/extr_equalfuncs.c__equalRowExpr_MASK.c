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
typedef  int /*<<< orphan*/  RowExpr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  colnames ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  row_format ; 
 int /*<<< orphan*/  row_typeid ; 

__attribute__((used)) static bool
FUNC4(const RowExpr *a, const RowExpr *b)
{
	FUNC2(args);
	FUNC3(row_typeid);
	FUNC0(row_format);
	FUNC2(colnames);
	FUNC1(location);

	return true;
}