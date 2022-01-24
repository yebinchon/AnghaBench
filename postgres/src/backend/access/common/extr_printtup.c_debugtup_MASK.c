#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* tts_tupleDescriptor; } ;
typedef  TYPE_1__ TupleTableSlot ;
typedef  TYPE_2__* TupleDesc ;
struct TYPE_10__ {int /*<<< orphan*/  atttypid; } ;
struct TYPE_9__ {int natts; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  DestReceiver ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int*) ; 

bool
FUNC6(TupleTableSlot *slot, DestReceiver *self)
{
	TupleDesc	typeinfo = slot->tts_tupleDescriptor;
	int			natts = typeinfo->natts;
	int			i;
	Datum		attr;
	char	   *value;
	bool		isnull;
	Oid			typoutput;
	bool		typisvarlena;

	for (i = 0; i < natts; ++i)
	{
		attr = FUNC5(slot, i + 1, &isnull);
		if (isnull)
			continue;
		FUNC2(FUNC1(typeinfo, i)->atttypid,
						  &typoutput, &typisvarlena);

		value = FUNC0(typoutput, attr);

		FUNC3((unsigned) i + 1, FUNC1(typeinfo, i), value);
	}
	FUNC4("\t----\n");

	return true;
}