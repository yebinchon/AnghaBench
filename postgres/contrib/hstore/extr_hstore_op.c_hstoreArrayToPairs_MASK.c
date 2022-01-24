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
struct TYPE_5__ {int isnull; scalar_t__ needfree; scalar_t__ vallen; int /*<<< orphan*/ * val; scalar_t__ keylen; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ Pairs ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 int MaxAllocSize ; 
 int /*<<< orphan*/  TEXTOID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ VARHDRSZ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,char,int /*<<< orphan*/ **,int**,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 
 int FUNC6 (TYPE_1__*,int,int*) ; 
 TYPE_1__* FUNC7 (int) ; 

Pairs *
FUNC8(ArrayType *a, int *npairs)
{
	Datum	   *key_datums;
	bool	   *key_nulls;
	int			key_count;
	Pairs	   *key_pairs;
	int			bufsiz;
	int			i,
				j;

	FUNC2(a,
					  TEXTOID, -1, false, 'i',
					  &key_datums, &key_nulls, &key_count);

	if (key_count == 0)
	{
		*npairs = 0;
		return NULL;
	}

	/*
	 * A text array uses at least eight bytes per element, so any overflow in
	 * "key_count * sizeof(Pairs)" is small enough for palloc() to catch.
	 * However, credible improvements to the array format could invalidate
	 * that assumption.  Therefore, use an explicit check rather than relying
	 * on palloc() to complain.
	 */
	if (key_count > MaxAllocSize / sizeof(Pairs))
		FUNC3(ERROR,
				(FUNC4(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
				 FUNC5("number of pairs (%d) exceeds the maximum allowed (%d)",
						key_count, (int) (MaxAllocSize / sizeof(Pairs)))));

	key_pairs = FUNC7(sizeof(Pairs) * key_count);

	for (i = 0, j = 0; i < key_count; i++)
	{
		if (!key_nulls[i])
		{
			key_pairs[j].key = FUNC0(key_datums[i]);
			key_pairs[j].keylen = FUNC1(key_datums[i]) - VARHDRSZ;
			key_pairs[j].val = NULL;
			key_pairs[j].vallen = 0;
			key_pairs[j].needfree = 0;
			key_pairs[j].isnull = 1;
			j++;
		}
	}

	*npairs = FUNC6(key_pairs, j, &bufsiz);

	return key_pairs;
}