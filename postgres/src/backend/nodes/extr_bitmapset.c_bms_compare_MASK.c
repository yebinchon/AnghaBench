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
typedef  scalar_t__ bitmapword ;
struct TYPE_5__ {int nwords; scalar_t__* words; } ;
typedef  TYPE_1__ Bitmapset ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (TYPE_1__ const*) ; 

int
FUNC2(const Bitmapset *a, const Bitmapset *b)
{
	int			shortlen;
	int			i;

	/* Handle cases where either input is NULL */
	if (a == NULL)
		return FUNC1(b) ? 0 : -1;
	else if (b == NULL)
		return FUNC1(a) ? 0 : +1;
	/* Handle cases where one input is longer than the other */
	shortlen = FUNC0(a->nwords, b->nwords);
	for (i = shortlen; i < a->nwords; i++)
	{
		if (a->words[i] != 0)
			return +1;
	}
	for (i = shortlen; i < b->nwords; i++)
	{
		if (b->words[i] != 0)
			return -1;
	}
	/* Process words in common */
	i = shortlen;
	while (--i >= 0)
	{
		bitmapword	aw = a->words[i];
		bitmapword	bw = b->words[i];

		if (aw != bw)
			return (aw > bw) ? +1 : -1;
	}
	return 0;
}