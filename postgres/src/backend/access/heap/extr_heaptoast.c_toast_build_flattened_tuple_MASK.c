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
struct varlena {int dummy; } ;
typedef  TYPE_1__* TupleDesc ;
struct TYPE_7__ {int attlen; } ;
struct TYPE_6__ {int natts; } ;
typedef  scalar_t__ Pointer ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int MaxTupleAttributeNumber ; 
 int /*<<< orphan*/  FUNC2 (struct varlena*) ; 
 TYPE_4__* FUNC3 (TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (struct varlena*) ; 
 struct varlena* FUNC5 (struct varlena*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

HeapTuple
FUNC9(TupleDesc tupleDesc,
							Datum *values,
							bool *isnull)
{
	HeapTuple	new_tuple;
	int			numAttrs = tupleDesc->natts;
	int			num_to_free;
	int			i;
	Datum		new_values[MaxTupleAttributeNumber];
	Pointer		freeable_values[MaxTupleAttributeNumber];

	/*
	 * We can pass the caller's isnull array directly to heap_form_tuple, but
	 * we potentially need to modify the values array.
	 */
	FUNC0(numAttrs <= MaxTupleAttributeNumber);
	FUNC7(new_values, values, numAttrs * sizeof(Datum));

	num_to_free = 0;
	for (i = 0; i < numAttrs; i++)
	{
		/*
		 * Look at non-null varlena attributes
		 */
		if (!isnull[i] && FUNC3(tupleDesc, i)->attlen == -1)
		{
			struct varlena *new_value;

			new_value = (struct varlena *) FUNC1(new_values[i]);
			if (FUNC4(new_value))
			{
				new_value = FUNC5(new_value);
				new_values[i] = FUNC2(new_value);
				freeable_values[num_to_free++] = (Pointer) new_value;
			}
		}
	}

	/*
	 * Form the reconfigured tuple.
	 */
	new_tuple = FUNC6(tupleDesc, new_values, isnull);

	/*
	 * Free allocated temp values
	 */
	for (i = 0; i < num_to_free; i++)
		FUNC8(freeable_values[i]);

	return new_tuple;
}