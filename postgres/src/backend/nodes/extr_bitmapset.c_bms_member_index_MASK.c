#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ bitmapword ;
struct TYPE_4__ {scalar_t__* words; } ;
typedef  TYPE_1__ Bitmapset ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_1__*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

int
FUNC4(Bitmapset *a, int x)
{
	int			i;
	int			bitnum;
	int			wordnum;
	int			result = 0;
	bitmapword	mask;

	/* return -1 if not a member of the bitmap */
	if (!FUNC2(x, a))
		return -1;

	wordnum = FUNC1(x);
	bitnum = FUNC0(x);

	/* count bits in preceding words */
	for (i = 0; i < wordnum; i++)
	{
		bitmapword	w = a->words[i];

		/* No need to count the bits in a zero word */
		if (w != 0)
			result += FUNC3(w);
	}

	/*
	 * Now add bits of the last word, but only those before the item. We can
	 * do that by applying a mask and then using popcount again. To get
	 * 0-based index, we want to count only preceding bits, not the item
	 * itself, so we subtract 1.
	 */
	mask = ((bitmapword) 1 << bitnum) - 1;
	result += FUNC3(a->words[wordnum] & mask);

	return result;
}