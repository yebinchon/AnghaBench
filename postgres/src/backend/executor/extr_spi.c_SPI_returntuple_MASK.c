#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* TupleDesc ;
struct TYPE_7__ {int /*<<< orphan*/  savedcxt; } ;
struct TYPE_6__ {scalar_t__ tdtypeid; scalar_t__ tdtypmod; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/ * HeapTupleHeader ;
typedef  int /*<<< orphan*/ * HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ RECORDOID ; 
 int /*<<< orphan*/  SPI_ERROR_ARGUMENT ; 
 int /*<<< orphan*/  SPI_ERROR_UNCONNECTED ; 
 int /*<<< orphan*/  SPI_result ; 
 TYPE_4__* _SPI_current ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 

HeapTupleHeader
FUNC4(HeapTuple tuple, TupleDesc tupdesc)
{
	MemoryContext oldcxt;
	HeapTupleHeader dtup;

	if (tuple == NULL || tupdesc == NULL)
	{
		SPI_result = SPI_ERROR_ARGUMENT;
		return NULL;
	}

	if (_SPI_current == NULL)
	{
		SPI_result = SPI_ERROR_UNCONNECTED;
		return NULL;
	}

	/* For RECORD results, make sure a typmod has been assigned */
	if (tupdesc->tdtypeid == RECORDOID &&
		tupdesc->tdtypmod < 0)
		FUNC2(tupdesc);

	oldcxt = FUNC1(_SPI_current->savedcxt);

	dtup = FUNC0(FUNC3(tuple, tupdesc));

	FUNC1(oldcxt);

	return dtup;
}