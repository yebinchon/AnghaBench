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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

Bitmapset *
FUNC5(int x)
{
	Bitmapset  *result;
	int			wordnum,
				bitnum;

	if (x < 0)
		FUNC3(ERROR, "negative bitmapset member not allowed");
	wordnum = FUNC2(x);
	bitnum = FUNC1(x);
	result = (Bitmapset *) FUNC4(FUNC0(wordnum + 1));
	result->nwords = wordnum + 1;
	result->words[wordnum] = ((bitmapword) 1 << bitnum);
	return result;
}