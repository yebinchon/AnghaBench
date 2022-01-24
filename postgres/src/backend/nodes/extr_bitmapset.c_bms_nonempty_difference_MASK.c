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
struct TYPE_5__ {int nwords; int* words; } ;
typedef  TYPE_1__ Bitmapset ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 

bool
FUNC2(const Bitmapset *a, const Bitmapset *b)
{
	int			shortlen;
	int			i;

	/* Handle cases where either input is NULL */
	if (a == NULL)
		return false;
	if (b == NULL)
		return !FUNC1(a);
	/* Check words in common */
	shortlen = FUNC0(a->nwords, b->nwords);
	for (i = 0; i < shortlen; i++)
	{
		if ((a->words[i] & ~b->words[i]) != 0)
			return true;
	}
	/* Check extra words in a */
	for (; i < a->nwords; i++)
	{
		if (a->words[i] != 0)
			return true;
	}
	return false;
}