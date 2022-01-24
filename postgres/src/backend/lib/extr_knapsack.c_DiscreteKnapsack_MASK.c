#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  Bitmapset ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_SMALL_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int) ; 
 void* FUNC10 (int) ; 

Bitmapset *
FUNC11(int max_weight, int num_items,
				 int *item_weights, double *item_values)
{
	MemoryContext local_ctx = FUNC0(CurrentMemoryContext,
													"Knapsack",
													ALLOCSET_SMALL_SIZES);
	MemoryContext oldctx = FUNC3(local_ctx);
	double	   *values;
	Bitmapset **sets;
	Bitmapset  *result;
	int			i,
				j;

	FUNC1(max_weight >= 0);
	FUNC1(num_items > 0 && item_weights);

	values = FUNC10((1 + max_weight) * sizeof(double));
	sets = FUNC10((1 + max_weight) * sizeof(Bitmapset *));

	for (i = 0; i <= max_weight; ++i)
	{
		values[i] = 0;
		sets[i] = FUNC9(num_items);
	}

	for (i = 0; i < num_items; ++i)
	{
		int			iw = item_weights[i];
		double		iv = item_values ? item_values[i] : 1;

		for (j = max_weight; j >= iw; --j)
		{
			int			ow = j - iw;

			if (values[j] <= values[ow] + iv)
			{
				/* copy sets[ow] to sets[j] without realloc */
				if (j != ow)
				{
					sets[j] = FUNC8(sets[j], sets[j]);
					sets[j] = FUNC5(sets[j], sets[ow]);
				}

				sets[j] = FUNC4(sets[j], i);

				values[j] = values[ow] + iv;
			}
		}
	}

	FUNC3(oldctx);

	result = FUNC7(FUNC6(sets[max_weight]), num_items);

	FUNC2(local_ctx);

	return result;
}