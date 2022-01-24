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
struct TYPE_5__ {int /*<<< orphan*/  t_len; int /*<<< orphan*/ * t_data; int /*<<< orphan*/  t_tableOid; int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/ * HeapTupleHeader ;
typedef  TYPE_1__* HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(HeapTuple src, HeapTuple dest)
{
	if (!FUNC0(src) || src->t_data == NULL)
	{
		dest->t_data = NULL;
		return;
	}

	dest->t_len = src->t_len;
	dest->t_self = src->t_self;
	dest->t_tableOid = src->t_tableOid;
	dest->t_data = (HeapTupleHeader) FUNC2(src->t_len);
	FUNC1((char *) dest->t_data, (char *) src->t_data, src->t_len);
}