#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_3__ {int /*<<< orphan*/  t_data; int /*<<< orphan*/  t_len; } ;
typedef  int /*<<< orphan*/  SV ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTupleHeader ;
typedef  TYPE_1__ HeapTupleData ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static SV  *
FUNC7(Datum attr)
{
	HeapTupleHeader td;
	Oid			tupType;
	int32		tupTypmod;
	TupleDesc	tupdesc;
	HeapTupleData tmptup;
	SV		   *sv;

	td = FUNC0(attr);

	/* Extract rowtype info and find a tupdesc */
	tupType = FUNC3(td);
	tupTypmod = FUNC2(td);
	tupdesc = FUNC5(tupType, tupTypmod);

	/* Build a temporary HeapTuple control structure */
	tmptup.t_len = FUNC1(td);
	tmptup.t_data = td;

	sv = FUNC6(&tmptup, tupdesc, true);
	FUNC4(tupdesc);

	return sv;
}