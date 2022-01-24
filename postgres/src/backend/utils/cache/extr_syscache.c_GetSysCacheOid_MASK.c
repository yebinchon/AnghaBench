#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  cc_tupdesc; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__** SysCache ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

Oid
FUNC5(int cacheId,
			   AttrNumber oidcol,
			   Datum key1,
			   Datum key2,
			   Datum key3,
			   Datum key4)
{
	HeapTuple	tuple;
	bool		isNull;
	Oid			result;

	tuple = FUNC3(cacheId, key1, key2, key3, key4);
	if (!FUNC1(tuple))
		return InvalidOid;
	result = FUNC4(tuple, oidcol,
						  SysCache[cacheId]->cc_tupdesc,
						  &isNull);
	FUNC0(!isNull);			/* columns used as oids should never be NULL */
	FUNC2(tuple);
	return result;
}