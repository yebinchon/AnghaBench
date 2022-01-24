#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* TupleDesc ;
struct TYPE_8__ {int attlen; int /*<<< orphan*/  attalign; } ;
struct TYPE_7__ {int natts; } ;
typedef  int /*<<< orphan*/  Size ;
typedef  TYPE_2__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (TYPE_1__*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Size
FUNC11(TupleDesc tupleDesc,
					   Datum *values,
					   bool *isnull)
{
	Size		data_length = 0;
	int			i;
	int			numberOfAttributes = tupleDesc->natts;

	for (i = 0; i < numberOfAttributes; i++)
	{
		Datum		val;
		Form_pg_attribute atti;

		if (isnull[i])
			continue;

		val = values[i];
		atti = FUNC4(tupleDesc, i);

		if (FUNC0(atti) &&
			FUNC5(FUNC2(val)))
		{
			/*
			 * we're anticipating converting to a short varlena header, so
			 * adjust length and don't count any alignment
			 */
			data_length += FUNC6(FUNC2(val));
		}
		else if (atti->attlen == -1 &&
				 FUNC7(FUNC2(val)))
		{
			/*
			 * we want to flatten the expanded value so that the constructed
			 * tuple doesn't depend on it
			 */
			data_length = FUNC10(data_length, atti->attalign);
			data_length += FUNC3(FUNC1(val));
		}
		else
		{
			data_length = FUNC9(data_length, atti->attalign,
										  atti->attlen, val);
			data_length = FUNC8(data_length, atti->attlen,
											  val);
		}
	}

	return data_length;
}