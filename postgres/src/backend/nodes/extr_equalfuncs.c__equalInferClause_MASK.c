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
typedef  int /*<<< orphan*/  InferClause ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conname ; 
 int /*<<< orphan*/  indexElems ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  whereClause ; 

__attribute__((used)) static bool
FUNC3(const InferClause *a, const InferClause *b)
{
	FUNC1(indexElems);
	FUNC1(whereClause);
	FUNC2(conname);
	FUNC0(location);

	return true;
}