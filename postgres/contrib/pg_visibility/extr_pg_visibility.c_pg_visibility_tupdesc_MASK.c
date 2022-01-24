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
typedef  int /*<<< orphan*/  TupleDesc ;
typedef  scalar_t__ AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BOOLOID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  INT8OID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static TupleDesc
FUNC4(bool include_blkno, bool include_pd)
{
	TupleDesc	tupdesc;
	AttrNumber	maxattr = 2;
	AttrNumber	a = 0;

	if (include_blkno)
		++maxattr;
	if (include_pd)
		++maxattr;
	tupdesc = FUNC2(maxattr);
	if (include_blkno)
		FUNC3(tupdesc, ++a, "blkno", INT8OID, -1, 0);
	FUNC3(tupdesc, ++a, "all_visible", BOOLOID, -1, 0);
	FUNC3(tupdesc, ++a, "all_frozen", BOOLOID, -1, 0);
	if (include_pd)
		FUNC3(tupdesc, ++a, "pd_all_visible", BOOLOID, -1, 0);
	FUNC0(a == maxattr);

	return FUNC1(tupdesc);
}