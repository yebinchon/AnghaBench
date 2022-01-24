#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ nwords; int /*<<< orphan*/ * words; } ;
typedef  TYPE_1__ Bitmapset ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

Bitmapset *
FUNC2(Bitmapset *a, const Bitmapset *b)
{
	Bitmapset  *result;
	const Bitmapset *other;
	int			otherlen;
	int			i;

	/* Handle cases where either input is NULL */
	if (a == NULL)
		return FUNC0(b);
	if (b == NULL)
		return a;
	/* Identify shorter and longer input; copy the longer one if needed */
	if (a->nwords < b->nwords)
	{
		result = FUNC0(b);
		other = a;
	}
	else
	{
		result = a;
		other = b;
	}
	/* And union the shorter input into the result */
	otherlen = other->nwords;
	for (i = 0; i < otherlen; i++)
		result->words[i] |= other->words[i];
	if (result != a)
		FUNC1(a);
	return result;
}