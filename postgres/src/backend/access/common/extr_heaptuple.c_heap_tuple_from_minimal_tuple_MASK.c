#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_7__ {int t_len; scalar_t__ t_data; int /*<<< orphan*/  t_tableOid; int /*<<< orphan*/  t_self; } ;
struct TYPE_6__ {int t_len; } ;
typedef  TYPE_1__* MinimalTuple ;
typedef  scalar_t__ HeapTupleHeader ;
typedef  TYPE_2__* HeapTuple ;

/* Variables and functions */
 int HEAPTUPLESIZE ; 
 int /*<<< orphan*/  HeapTupleHeaderData ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MINIMAL_TUPLE_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  t_infomask2 ; 

HeapTuple
FUNC5(MinimalTuple mtup)
{
	HeapTuple	result;
	uint32		len = mtup->t_len + MINIMAL_TUPLE_OFFSET;

	result = (HeapTuple) FUNC4(HEAPTUPLESIZE + len);
	result->t_len = len;
	FUNC0(&(result->t_self));
	result->t_tableOid = InvalidOid;
	result->t_data = (HeapTupleHeader) ((char *) result + HEAPTUPLESIZE);
	FUNC1((char *) result->t_data + MINIMAL_TUPLE_OFFSET, mtup, mtup->t_len);
	FUNC2(result->t_data, 0, FUNC3(HeapTupleHeaderData, t_infomask2));
	return result;
}