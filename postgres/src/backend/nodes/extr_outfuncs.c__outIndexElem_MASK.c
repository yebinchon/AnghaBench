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
typedef  int /*<<< orphan*/  IndexElem ;

/* Variables and functions */
 int /*<<< orphan*/  SortByDir ; 
 int /*<<< orphan*/  SortByNulls ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  collation ; 
 int /*<<< orphan*/  expr ; 
 int /*<<< orphan*/  indexcolname ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  nulls_ordering ; 
 int /*<<< orphan*/  opclass ; 
 int /*<<< orphan*/  ordering ; 

__attribute__((used)) static void
FUNC4(StringInfo str, const IndexElem *node)
{
	FUNC2("INDEXELEM");

	FUNC3(name);
	FUNC1(expr);
	FUNC3(indexcolname);
	FUNC1(collation);
	FUNC1(opclass);
	FUNC0(ordering, SortByDir);
	FUNC0(nulls_ordering, SortByNulls);
}