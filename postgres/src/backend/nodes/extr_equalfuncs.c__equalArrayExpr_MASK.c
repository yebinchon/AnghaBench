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
typedef  int /*<<< orphan*/  ArrayExpr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  array_collid ; 
 int /*<<< orphan*/  array_typeid ; 
 int /*<<< orphan*/  element_typeid ; 
 int /*<<< orphan*/  elements ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  multidims ; 

__attribute__((used)) static bool
FUNC3(const ArrayExpr *a, const ArrayExpr *b)
{
	FUNC2(array_typeid);
	FUNC2(array_collid);
	FUNC2(element_typeid);
	FUNC1(elements);
	FUNC2(multidims);
	FUNC0(location);

	return true;
}