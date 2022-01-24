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
typedef  int bitmapword ;
struct TYPE_3__ {int nwords; int* words; } ;
typedef  TYPE_1__ Bitmapset ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

bool
FUNC3(int x, const Bitmapset *a)
{
	int			wordnum,
				bitnum;

	/* XXX better to just return false for x<0 ? */
	if (x < 0)
		FUNC2(ERROR, "negative bitmapset member not allowed");
	if (a == NULL)
		return false;
	wordnum = FUNC1(x);
	bitnum = FUNC0(x);
	if (wordnum >= a->nwords)
		return false;
	if ((a->words[wordnum] & ((bitmapword) 1 << bitnum)) != 0)
		return true;
	return false;
}