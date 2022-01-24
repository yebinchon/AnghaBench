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
struct TYPE_3__ {scalar_t__ current_item; scalar_t__ nitems; scalar_t__ slice_ndim; char* data_ptr; int* slice_nulls; int slice_len; int /*<<< orphan*/  typalign; int /*<<< orphan*/  typbyval; int /*<<< orphan*/  typlen; int /*<<< orphan*/  arr; int /*<<< orphan*/  slice_lbound; int /*<<< orphan*/  slice_dims; int /*<<< orphan*/  nullbitmap; scalar_t__* slice_values; } ;
typedef  scalar_t__ Datum ;
typedef  int /*<<< orphan*/  ArrayType ;
typedef  TYPE_1__* ArrayIterator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__*,int*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC7(ArrayIterator iterator, Datum *value, bool *isnull)
{
	/* Done if we have reached the end of the array */
	if (iterator->current_item >= iterator->nitems)
		return false;

	if (iterator->slice_ndim == 0)
	{
		/*
		 * Scalar case: return one element.
		 */
		if (FUNC2(iterator->nullbitmap, iterator->current_item++))
		{
			*isnull = true;
			*value = (Datum) 0;
		}
		else
		{
			/* non-NULL, so fetch the individual Datum to return */
			char	   *p = iterator->data_ptr;

			*isnull = false;
			*value = FUNC6(p, iterator->typbyval, iterator->typlen);

			/* Move our data pointer forward to the next element */
			p = FUNC3(p, iterator->typlen, p);
			p = (char *) FUNC4(p, iterator->typalign);
			iterator->data_ptr = p;
		}
	}
	else
	{
		/*
		 * Slice case: build and return an array of the requested size.
		 */
		ArrayType  *result;
		Datum	   *values = iterator->slice_values;
		bool	   *nulls = iterator->slice_nulls;
		char	   *p = iterator->data_ptr;
		int			i;

		for (i = 0; i < iterator->slice_len; i++)
		{
			if (FUNC2(iterator->nullbitmap,
								 iterator->current_item++))
			{
				nulls[i] = true;
				values[i] = (Datum) 0;
			}
			else
			{
				nulls[i] = false;
				values[i] = FUNC6(p, iterator->typbyval, iterator->typlen);

				/* Move our data pointer forward to the next element */
				p = FUNC3(p, iterator->typlen, p);
				p = (char *) FUNC4(p, iterator->typalign);
			}
		}

		iterator->data_ptr = p;

		result = FUNC5(values,
									nulls,
									iterator->slice_ndim,
									iterator->slice_dims,
									iterator->slice_lbound,
									FUNC0(iterator->arr),
									iterator->typlen,
									iterator->typbyval,
									iterator->typalign);

		*isnull = false;
		*value = FUNC1(result);
	}

	return true;
}