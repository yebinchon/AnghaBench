#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int t_len; int /*<<< orphan*/ * t_data; int /*<<< orphan*/  t_tableOid; int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/ * HeapTupleHeader ;
typedef  TYPE_1__* HeapTuple ;

/* Variables and functions */
 int HEAPTUPLESIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 scalar_t__ FUNC2 (int) ; 

HeapTuple
FUNC3(HeapTuple tuple)
{
	HeapTuple	newTuple;

	if (!FUNC0(tuple) || tuple->t_data == NULL)
		return NULL;

	newTuple = (HeapTuple) FUNC2(HEAPTUPLESIZE + tuple->t_len);
	newTuple->t_len = tuple->t_len;
	newTuple->t_self = tuple->t_self;
	newTuple->t_tableOid = tuple->t_tableOid;
	newTuple->t_data = (HeapTupleHeader) ((char *) newTuple + HEAPTUPLESIZE);
	FUNC1((char *) newTuple->t_data, (char *) tuple->t_data, tuple->t_len);
	return newTuple;
}