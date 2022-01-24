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
typedef  int int32 ;
typedef  int /*<<< orphan*/  WordEntry ;
struct TYPE_4__ {scalar_t__ prefix; } ;
typedef  int /*<<< orphan*/  TSVector ;
typedef  int /*<<< orphan*/  TSQuery ;
typedef  TYPE_1__ QueryOperand ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int) ; 

__attribute__((used)) static WordEntry *
FUNC4(TSVector t, TSQuery q, QueryOperand *item, int32 *nitem)
{
	WordEntry  *StopLow = FUNC0(t);
	WordEntry  *StopHigh = (WordEntry *) FUNC2(t);
	WordEntry  *StopMiddle = StopHigh;
	int			difference;

	*nitem = 0;

	/* Loop invariant: StopLow <= item < StopHigh */
	while (StopLow < StopHigh)
	{
		StopMiddle = StopLow + (StopHigh - StopLow) / 2;
		difference = FUNC3(FUNC2(t), FUNC1(q), StopMiddle, item, false);
		if (difference == 0)
		{
			StopHigh = StopMiddle;
			*nitem = 1;
			break;
		}
		else if (difference > 0)
			StopLow = StopMiddle + 1;
		else
			StopHigh = StopMiddle;
	}

	if (item->prefix)
	{
		if (StopLow >= StopHigh)
			StopMiddle = StopHigh;

		*nitem = 0;

		while (StopMiddle < (WordEntry *) FUNC2(t) &&
			   FUNC3(FUNC2(t), FUNC1(q), StopMiddle, item, true) == 0)
		{
			(*nitem)++;
			StopMiddle++;
		}
	}

	return (*nitem > 0) ? StopHigh : NULL;
}