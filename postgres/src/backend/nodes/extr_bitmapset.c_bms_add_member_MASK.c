#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int bitmapword ;
struct TYPE_6__ {int nwords; int* words; } ;
typedef  TYPE_1__ Bitmapset ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC2 (int) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

Bitmapset *
FUNC6(Bitmapset *a, int x)
{
	int			wordnum,
				bitnum;

	if (x < 0)
		FUNC4(ERROR, "negative bitmapset member not allowed");
	if (a == NULL)
		return FUNC3(x);
	wordnum = FUNC2(x);
	bitnum = FUNC1(x);

	/* enlarge the set if necessary */
	if (wordnum >= a->nwords)
	{
		int			oldnwords = a->nwords;
		int			i;

		a = (Bitmapset *) FUNC5(a, FUNC0(wordnum + 1));
		a->nwords = wordnum + 1;
		/* zero out the enlarged portion */
		for (i = oldnwords; i < a->nwords; i++)
			a->words[i] = 0;
	}

	a->words[wordnum] |= ((bitmapword) 1 << bitnum);
	return a;
}